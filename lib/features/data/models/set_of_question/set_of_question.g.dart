// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_of_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetOfQuestionImpl _$$SetOfQuestionImplFromJson(Map<String, dynamic> json) =>
    _$SetOfQuestionImpl(
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
      id: json['id'] as String,
      groupId: json['groupId'] as String,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SetOfQuestionImplToJson(_$SetOfQuestionImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'id': instance.id,
      'groupId': instance.groupId,
      'questions': instance.questions,
    };

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      questionTitle: json['questionTitle'] as String,
      questionAnswer: json['questionAnswer'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => Answers.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
    <String, dynamic>{
      'questionTitle': instance.questionTitle,
      'questionAnswer': instance.questionAnswer,
      'answers': instance.answers,
    };

_$AnswersImpl _$$AnswersImplFromJson(Map<String, dynamic> json) =>
    _$AnswersImpl(
      answersId: json['answersId'] as String,
      answersContent: json['answersContent'] as String,
    );

Map<String, dynamic> _$$AnswersImplToJson(_$AnswersImpl instance) =>
    <String, dynamic>{
      'answersId': instance.answersId,
      'answersContent': instance.answersContent,
    };
