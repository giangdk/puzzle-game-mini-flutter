import 'package:get/get.dart';
import 'package:puzzle/features/data/models/set_of_question/set_of_question.dart';

class TestController extends GetxController {
  List<String> answers = [];
  Rx<int> point = 0.obs;
  void init() {
    answers = List.generate(100, (index) => "");
  }

  void checkPoint(List<Question> question) {
    point = 0.obs;
    for (int i = 0; i < question.length; i++) {
      if (question[i].questionAnswer == answers[i]) {
        point.value = point.value + 1;
      }
    }
  }
}
