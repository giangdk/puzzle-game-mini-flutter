// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_of_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetOfQuestion _$SetOfQuestionFromJson(Map<String, dynamic> json) {
  return _SetOfQuestion.fromJson(json);
}

/// @nodoc
mixin _$SetOfQuestion {
  String get title => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetOfQuestionCopyWith<SetOfQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetOfQuestionCopyWith<$Res> {
  factory $SetOfQuestionCopyWith(
          SetOfQuestion value, $Res Function(SetOfQuestion) then) =
      _$SetOfQuestionCopyWithImpl<$Res, SetOfQuestion>;
  @useResult
  $Res call(
      {String title,
      String thumbnail,
      String id,
      String groupId,
      List<Question> questions});
}

/// @nodoc
class _$SetOfQuestionCopyWithImpl<$Res, $Val extends SetOfQuestion>
    implements $SetOfQuestionCopyWith<$Res> {
  _$SetOfQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? thumbnail = null,
    Object? id = null,
    Object? groupId = null,
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetOfQuestionImplCopyWith<$Res>
    implements $SetOfQuestionCopyWith<$Res> {
  factory _$$SetOfQuestionImplCopyWith(
          _$SetOfQuestionImpl value, $Res Function(_$SetOfQuestionImpl) then) =
      __$$SetOfQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String thumbnail,
      String id,
      String groupId,
      List<Question> questions});
}

/// @nodoc
class __$$SetOfQuestionImplCopyWithImpl<$Res>
    extends _$SetOfQuestionCopyWithImpl<$Res, _$SetOfQuestionImpl>
    implements _$$SetOfQuestionImplCopyWith<$Res> {
  __$$SetOfQuestionImplCopyWithImpl(
      _$SetOfQuestionImpl _value, $Res Function(_$SetOfQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? thumbnail = null,
    Object? id = null,
    Object? groupId = null,
    Object? questions = null,
  }) {
    return _then(_$SetOfQuestionImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetOfQuestionImpl implements _SetOfQuestion {
  _$SetOfQuestionImpl(
      {required this.title,
      required this.thumbnail,
      required this.id,
      required this.groupId,
      required final List<Question> questions})
      : _questions = questions;

  factory _$SetOfQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetOfQuestionImplFromJson(json);

  @override
  final String title;
  @override
  final String thumbnail;
  @override
  final String id;
  @override
  final String groupId;
  final List<Question> _questions;
  @override
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'SetOfQuestion(title: $title, thumbnail: $thumbnail, id: $id, groupId: $groupId, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetOfQuestionImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, thumbnail, id, groupId,
      const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetOfQuestionImplCopyWith<_$SetOfQuestionImpl> get copyWith =>
      __$$SetOfQuestionImplCopyWithImpl<_$SetOfQuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetOfQuestionImplToJson(
      this,
    );
  }
}

abstract class _SetOfQuestion implements SetOfQuestion {
  factory _SetOfQuestion(
      {required final String title,
      required final String thumbnail,
      required final String id,
      required final String groupId,
      required final List<Question> questions}) = _$SetOfQuestionImpl;

  factory _SetOfQuestion.fromJson(Map<String, dynamic> json) =
      _$SetOfQuestionImpl.fromJson;

  @override
  String get title;
  @override
  String get thumbnail;
  @override
  String get id;
  @override
  String get groupId;
  @override
  List<Question> get questions;
  @override
  @JsonKey(ignore: true)
  _$$SetOfQuestionImplCopyWith<_$SetOfQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  String get questionTitle => throw _privateConstructorUsedError;
  String get questionAnswer => throw _privateConstructorUsedError;
  List<Answers> get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {String questionTitle, String questionAnswer, List<Answers> answers});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionTitle = null,
    Object? questionAnswer = null,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      questionTitle: null == questionTitle
          ? _value.questionTitle
          : questionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      questionAnswer: null == questionAnswer
          ? _value.questionAnswer
          : questionAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answers>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionImplCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$QuestionImplCopyWith(
          _$QuestionImpl value, $Res Function(_$QuestionImpl) then) =
      __$$QuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String questionTitle, String questionAnswer, List<Answers> answers});
}

/// @nodoc
class __$$QuestionImplCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$QuestionImpl>
    implements _$$QuestionImplCopyWith<$Res> {
  __$$QuestionImplCopyWithImpl(
      _$QuestionImpl _value, $Res Function(_$QuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionTitle = null,
    Object? questionAnswer = null,
    Object? answers = null,
  }) {
    return _then(_$QuestionImpl(
      questionTitle: null == questionTitle
          ? _value.questionTitle
          : questionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      questionAnswer: null == questionAnswer
          ? _value.questionAnswer
          : questionAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answers>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionImpl implements _Question {
  _$QuestionImpl(
      {required this.questionTitle,
      required this.questionAnswer,
      required final List<Answers> answers})
      : _answers = answers;

  factory _$QuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionImplFromJson(json);

  @override
  final String questionTitle;
  @override
  final String questionAnswer;
  final List<Answers> _answers;
  @override
  List<Answers> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'Question(questionTitle: $questionTitle, questionAnswer: $questionAnswer, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionImpl &&
            (identical(other.questionTitle, questionTitle) ||
                other.questionTitle == questionTitle) &&
            (identical(other.questionAnswer, questionAnswer) ||
                other.questionAnswer == questionAnswer) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, questionTitle, questionAnswer,
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      __$$QuestionImplCopyWithImpl<_$QuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionImplToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  factory _Question(
      {required final String questionTitle,
      required final String questionAnswer,
      required final List<Answers> answers}) = _$QuestionImpl;

  factory _Question.fromJson(Map<String, dynamic> json) =
      _$QuestionImpl.fromJson;

  @override
  String get questionTitle;
  @override
  String get questionAnswer;
  @override
  List<Answers> get answers;
  @override
  @JsonKey(ignore: true)
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Answers _$AnswersFromJson(Map<String, dynamic> json) {
  return _Answers.fromJson(json);
}

/// @nodoc
mixin _$Answers {
  String get answersId => throw _privateConstructorUsedError;
  String get answersContent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswersCopyWith<Answers> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswersCopyWith<$Res> {
  factory $AnswersCopyWith(Answers value, $Res Function(Answers) then) =
      _$AnswersCopyWithImpl<$Res, Answers>;
  @useResult
  $Res call({String answersId, String answersContent});
}

/// @nodoc
class _$AnswersCopyWithImpl<$Res, $Val extends Answers>
    implements $AnswersCopyWith<$Res> {
  _$AnswersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answersId = null,
    Object? answersContent = null,
  }) {
    return _then(_value.copyWith(
      answersId: null == answersId
          ? _value.answersId
          : answersId // ignore: cast_nullable_to_non_nullable
              as String,
      answersContent: null == answersContent
          ? _value.answersContent
          : answersContent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswersImplCopyWith<$Res> implements $AnswersCopyWith<$Res> {
  factory _$$AnswersImplCopyWith(
          _$AnswersImpl value, $Res Function(_$AnswersImpl) then) =
      __$$AnswersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String answersId, String answersContent});
}

/// @nodoc
class __$$AnswersImplCopyWithImpl<$Res>
    extends _$AnswersCopyWithImpl<$Res, _$AnswersImpl>
    implements _$$AnswersImplCopyWith<$Res> {
  __$$AnswersImplCopyWithImpl(
      _$AnswersImpl _value, $Res Function(_$AnswersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answersId = null,
    Object? answersContent = null,
  }) {
    return _then(_$AnswersImpl(
      answersId: null == answersId
          ? _value.answersId
          : answersId // ignore: cast_nullable_to_non_nullable
              as String,
      answersContent: null == answersContent
          ? _value.answersContent
          : answersContent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswersImpl implements _Answers {
  _$AnswersImpl({required this.answersId, required this.answersContent});

  factory _$AnswersImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswersImplFromJson(json);

  @override
  final String answersId;
  @override
  final String answersContent;

  @override
  String toString() {
    return 'Answers(answersId: $answersId, answersContent: $answersContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswersImpl &&
            (identical(other.answersId, answersId) ||
                other.answersId == answersId) &&
            (identical(other.answersContent, answersContent) ||
                other.answersContent == answersContent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, answersId, answersContent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswersImplCopyWith<_$AnswersImpl> get copyWith =>
      __$$AnswersImplCopyWithImpl<_$AnswersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswersImplToJson(
      this,
    );
  }
}

abstract class _Answers implements Answers {
  factory _Answers(
      {required final String answersId,
      required final String answersContent}) = _$AnswersImpl;

  factory _Answers.fromJson(Map<String, dynamic> json) = _$AnswersImpl.fromJson;

  @override
  String get answersId;
  @override
  String get answersContent;
  @override
  @JsonKey(ignore: true)
  _$$AnswersImplCopyWith<_$AnswersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
