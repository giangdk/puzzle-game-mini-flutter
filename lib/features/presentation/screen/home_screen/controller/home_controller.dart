import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:puzzle/core/injection/injection.dart';
import 'package:puzzle/features/data/data_source/remote/api/product_api.dart';
import 'package:puzzle/features/data/models/group_question/group_question.dart';
import 'package:puzzle/features/data/models/set_of_question/set_of_question.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  var repo = getIt.get<ProductApi>();
  RxList<SetOfQuestion> listSetOfQuestion = RxList([]);
  RxList<GroupQuestion> listGroupId = RxList([]);
  Rx<int> turn = Rx<int>(0);

  Future<void> init() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getInt("turn") == null) {
      await prefs.setInt("turn", 50);
    }
    turn.value = prefs.getInt("turn") ?? 0;
    return;
  }

  Future<void> getData() async {
    await init();
    var db = FirebaseFirestore.instance;
    db.collection("setOfQuestions").get().then(
      (querySnapshot) {
        print("Successfully get setOfQuestions completed");
        for (var docSnapshot in querySnapshot.docs) {
          SetOfQuestion model = SetOfQuestion.fromJson(docSnapshot.data());
          listSetOfQuestion.add(model);
          model;
        }
        update();
      },
      onError: (e) => print("Error get setOfQuestions completing: $e"),
    );
    db.collection("listGroup").get().then(
      (querySnapshot) {
        print("Successfully get listGroup completed");
        for (var docSnapshot in querySnapshot.docs) {
          GroupQuestion model = GroupQuestion.fromJson(docSnapshot.data());
          listGroupId.add(model);
          model;
        }
        update();
      },
      onError: (e) => print("Error get listGroup completing: $e"),
    );
  }
}

class InAppController extends GetxController {
  final InAppPurchase inAppPurchase = InAppPurchase.instance;
  bool _available = true;
  RxList<ProductDetails> products = RxList([]);
  List<PurchaseDetails> _purchases = [];
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  @override
  void onReady() {
    super.onReady();
    final Stream<List<PurchaseDetails>> purchaseUpdated = inAppPurchase.purchaseStream;
    purchaseUpdated.listen((purchaseDetailsList) {
      _listenToPurchaseUpdated(purchaseDetailsList);
    }, onDone: () {
      _subscription.cancel();
    }, onError: (error) {
      // Handle error here.
    });
    _initialize();
  }

  Future<void> _initialize() async {
    _available = await inAppPurchase.isAvailable();
    if (_available) {
      const Set<String> _kIds = {'puzzle_100_plays'};
      final ProductDetailsResponse response = await inAppPurchase.queryProductDetails(_kIds);
      if (response.error == null) {
        products.value = response.productDetails;
        update();
      }
    }
  }

  void verifyPurchase(PurchaseDetails purchaseDetails) {
    // Verify the purchase here and then complete it.
    inAppPurchase.completePurchase(purchaseDetails);
  }

  void _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) async {
    _purchases = purchaseDetailsList;

    for (var purchaseDetails in purchaseDetailsList) {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        // Handle pending status.
      } else if (purchaseDetails.status == PurchaseStatus.error) {
        print(purchaseDetails.error.toString());
        verifyPurchase(purchaseDetails);
      } else if (purchaseDetails.status == PurchaseStatus.purchased) {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        var num = prefs.getInt("turn") ?? 0;
        await prefs.setInt("turn", num + 100);
        Get.put(HomeController()).init();
        verifyPurchase(purchaseDetails);
      }
    }
  }

  // void _handlePendingTransactions() async {
  //        const Set<String> _kIds = {'puzzle_100_plays'};
  //     final ProductDetailsResponse response = await inAppPurchase.;
  //   for (var purchase in response.productDetails) {
  //       verifyPurchase(purchase);

  //   }
  // }
}
