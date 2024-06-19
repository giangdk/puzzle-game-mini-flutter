<!-- import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:puzzle/core/injection/injection.dart';
import 'package:puzzle/features/data/data_source/remote/api/product_api.dart';

class HomeController extends GetxController {
  var repo = getIt.get<ProductApi>();
  Future<void> getData() async {
    // var res = await repo.getProducts();

    // DatabaseReference ref = FirebaseDatabase.instance.ref("setOfQuestions");
    // final snapshot = await ref.get();
    var db = FirebaseFirestore.instance;
    // final setOfQuestions = db.collection("set_of_questions");
    // setOfQuestions.doc("SF").set({
    //   "title": "Bộ câu đố về Mai Đức Giang",
    //   "thumbnail":
    //       "https://firebasestorage.googleapis.com/v0/b/do-an-6d6c4.appspot.com/o/images%2FA%CC%89nh%20ma%CC%80n%20hi%CC%80nh%202023-12-26%20lu%CC%81c%2014.54.46.png?alt=media&token=96a616ed-dd9c-4813-8424-938d45607c0f",
    //   "questions": [
    //     {
    //       "question_title": "Mai Đức Giang sinh ngày mấy",
    //       "question_answer": "a",
    //       "answers": [
    //         {"answers_id": "a", "answers_content": "11/12/2001"},
    //         {"answers_id": "b", "answers_content": "01/12/2001"},
    //         {"answers_id": "c", "answers_content": "21/12/2001"},
    //         {"answers_id": "d", "answers_content": "11/02/2001"}
    //       ]
    //     }
    //   ]
    // });
    db.collection("set_of_questions").get().then(
      (querySnapshot) {
        print("Successfully completed");
        for (var docSnapshot in querySnapshot.docs) {
          print('${docSnapshot.id} => ${docSnapshot.data()}');
        }
      },
      onError: (e) => print("Error completing: $e"),
    );
    // await ref.set([
    //   snapshot.value,
    //   {
    //     "title": "Bộ câu đố về Mai Đức Giang",
    //     "thumbnail":
    //         "https://firebasestorage.googleapis.com/v0/b/do-an-6d6c4.appspot.com/o/images%2FA%CC%89nh%20ma%CC%80n%20hi%CC%80nh%202023-12-26%20lu%CC%81c%2014.54.46.png?alt=media&token=96a616ed-dd9c-4813-8424-938d45607c0f",
    //     "questions": [
    //       {
    //         "question_title": "Mai Đức Giang sinh ngày mấy",
    //         "question_answer": "a",
    //         "answers": [
    //           {"answers_id": "a", "answers_content": "11/12/2001"},
    //           {"answers_id": "b", "answers_content": "01/12/2001"},
    //           {"answers_id": "c", "answers_content": "21/12/2001"},
    //           {"answers_id": "d", "answers_content": "11/02/2001"}
    //         ]
    //       }
    //     ]
    //   }
    // ]);
    // ref.onValue.listen((event) {
    //   event;
    //   print("Giang +${event.toString()}");
    // });
  }
} -->
