import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:puzzle/core/injection/injection.dart';
import 'package:puzzle/features/data/data_source/remote/api/product_api.dart';
import 'package:puzzle/features/data/models/group_question/group_question.dart';
import 'package:puzzle/features/data/models/set_of_question/set_of_question.dart';
import 'package:puzzle/features/presentation/routes/app_routes.dart';

class ListQuizzController extends GetxController {
  var repo = getIt.get<ProductApi>();

  RxList<GroupQuestion> listGroupId = RxList([]);
  RxMap<String, List<SetOfQuestion>> mapQuizz = RxMap();
  var db = FirebaseFirestore.instance;
  Future<void> getData() async {
    db.collection("listGroup").get().then(
      (querySnapshot) {
        print("Successfully get listGroup completed");
        for (var docSnapshot in querySnapshot.docs) {
          GroupQuestion model = GroupQuestion.fromJson(docSnapshot.data());
          listGroupId.add(model);
          model;
        }
        for (var elementGroup in listGroupId) {
          db.collection("setOfQuestions").where("groupId", isEqualTo: elementGroup.groupId).get().then(
            (querySnapshot) {
              List<SetOfQuestion> listSetOfQuestion = [];
              for (var docSnapshot in querySnapshot.docs) {
                SetOfQuestion model = SetOfQuestion.fromJson(docSnapshot.data());
                listSetOfQuestion.add(model);
              }
              if (listSetOfQuestion.isNotEmpty) {
                mapQuizz.value[elementGroup.groupId] = listSetOfQuestion;
                update();
                mapQuizz;
              }
            },
            onError: (e) => print("Error get setOfQuestions completing: $e"),
          );
        }
      },
      onError: (e) => print("Error get listGroup completing: $e"),
    );
  }

  Future<void> searchQuestion(String id) async {
    EasyLoading.show();
    List<SetOfQuestion> listSetOfQuestion = [];
    db.collection("setOfQuestions").where("id", isEqualTo: id).get().then(
      (querySnapshot) {
        for (var docSnapshot in querySnapshot.docs) {
          SetOfQuestion model = SetOfQuestion.fromJson(docSnapshot.data());
          listSetOfQuestion.add(model);
        }
        EasyLoading.dismiss();
        if (listSetOfQuestion.isNotEmpty) {
          Get.toNamed(
            AppRoutes.testScreen,
            arguments: {
              "setOfQuestion": listSetOfQuestion[0],
            },
          );
        } else {
          EasyLoading.showError("Không tìm thấy câu đố");
        }
      },
      onError: (e) => print("Error get setOfQuestions completing: $e"),
    );
    await Future.delayed(
      const Duration(seconds: 5),
    );
    EasyLoading.dismiss();
  }
}