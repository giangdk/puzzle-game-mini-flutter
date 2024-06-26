// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_of_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SetOfQuestion _$$_SetOfQuestionFromJson(Map<String, dynamic> json) =>
    _$_SetOfQuestion(
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
      id: json['id'] as String,
      groupId: json['groupId'] as String,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SetOfQuestionToJson(_$_SetOfQuestion instance) =>
    <String, dynamic>{
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'id': instance.id,
      'groupId': instance.groupId,
      'questions': instance.questions,
    };

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      questionTitle: json['questionTitle'] as String,
      questionAnswer: json['questionAnswer'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => Answers.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'questionTitle': instance.questionTitle,
      'questionAnswer': instance.questionAnswer,
      'answers': instance.answers,
    };

_$_Answers _$$_AnswersFromJson(Map<String, dynamic> json) => _$_Answers(
      answersId: json['answersId'] as String,
      answersContent: json['answersContent'] as String,
    );

Map<String, dynamic> _$$_AnswersToJson(_$_Answers instance) =>
    <String, dynamic>{
      'answersId': instance.answersId,
      'answersContent': instance.answersContent,
    };
