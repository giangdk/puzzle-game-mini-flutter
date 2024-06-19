import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_question.freezed.dart';
part 'group_question.g.dart';

@freezed
class GroupQuestion with _$GroupQuestion {
  factory GroupQuestion({
    required String groupId,
  }) = _GroupQuestion;

  factory GroupQuestion.fromJson(Map<String, dynamic> json) => _$GroupQuestionFromJson(json);
}
