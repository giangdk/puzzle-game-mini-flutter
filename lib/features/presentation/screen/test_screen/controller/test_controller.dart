import 'dart:convert';

import 'package:get/get.dart';
import 'package:puzzle/features/data/models/set_of_question/set_of_question.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_controller.freezed.dart';
part 'test_controller.g.dart';

class TestController extends GetxController {
  List<String> answers = [];
  RxList<LeaderBoardModel> listLeaderboard = RxList([]);
  int point = 0;
  void init(String idSetOfQuestion) {
    answers = List.generate(100, (index) => "");
    getDataLeaderBoard(idSetOfQuestion);
  }

  Future<void> checkPoint(List<Question> question, String idSetOfQuestion) async {
    point = 0;
    for (int i = 0; i < question.length; i++) {
      if (question[i].questionAnswer == answers[i]) {
        point = point + 100;
      }
    }
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    listLeaderboard.value.add(LeaderBoardModel(name: prefs.getString("name") ?? "", score: point));
    listLeaderboard.sort((a, b) => b.score.compareTo(a.score));
    prefs.setStringList(
      "leaderboard_$idSetOfQuestion",
      listLeaderboard.map((element) => jsonEncode(element)).toList(),
    );
    update();
  }

  Future<void> getDataLeaderBoard(String idSetOfQuestion) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> leaderboard = prefs.getStringList(
          "leaderboard_$idSetOfQuestion",
        ) ??
        [];
    listLeaderboard.value = leaderboard.map((e) => LeaderBoardModel.fromJson(jsonDecode(e))).toList();
    update();
  }
}

@freezed
class LeaderBoardModel with _$LeaderBoardModel {
  factory LeaderBoardModel({
    required String name,
    required int score,
  }) = _LeaderBoardModel;

  factory LeaderBoardModel.fromJson(Map<String, dynamic> json) => _$LeaderBoardModelFromJson(json);
}
