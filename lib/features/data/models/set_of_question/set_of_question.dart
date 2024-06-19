import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_of_question.freezed.dart';
part 'set_of_question.g.dart';

@freezed
class SetOfQuestion with _$SetOfQuestion {
  factory SetOfQuestion({
    required String title,
    required String thumbnail,
    required String id,
    required String groupId,
    required List<Question> questions,
  }) = _SetOfQuestion;

  factory SetOfQuestion.fromJson(Map<String, dynamic> json) => _$SetOfQuestionFromJson(json);
}

@freezed
class Question with _$Question {
  factory Question({
    required String questionTitle,
    required String questionAnswer,
    required List<Answers> answers,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);
}

@freezed
class Answers with _$Answers {
  factory Answers({
    required String answersId,
    required String answersContent,
  }) = _Answers;

  factory Answers.fromJson(Map<String, dynamic> json) => _$AnswersFromJson(json);
}
