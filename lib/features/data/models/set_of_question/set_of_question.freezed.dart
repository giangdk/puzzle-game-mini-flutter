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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_SetOfQuestionCopyWith<$Res>
    implements $SetOfQuestionCopyWith<$Res> {
  factory _$$_SetOfQuestionCopyWith(
          _$_SetOfQuestion value, $Res Function(_$_SetOfQuestion) then) =
      __$$_SetOfQuestionCopyWithImpl<$Res>;
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
class __$$_SetOfQuestionCopyWithImpl<$Res>
    extends _$SetOfQuestionCopyWithImpl<$Res, _$_SetOfQuestion>
    implements _$$_SetOfQuestionCopyWith<$Res> {
  __$$_SetOfQuestionCopyWithImpl(
      _$_SetOfQuestion _value, $Res Function(_$_SetOfQuestion) _then)
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
    return _then(_$_SetOfQuestion(
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
class _$_SetOfQuestion implements _SetOfQuestion {
  _$_SetOfQuestion(
      {required this.title,
      required this.thumbnail,
      required this.id,
      required this.groupId,
      required final List<Question> questions})
      : _questions = questions;

  factory _$_SetOfQuestion.fromJson(Map<String, dynamic> json) =>
      _$$_SetOfQuestionFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetOfQuestion &&
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
  _$$_SetOfQuestionCopyWith<_$_SetOfQuestion> get copyWith =>
      __$$_SetOfQuestionCopyWithImpl<_$_SetOfQuestion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SetOfQuestionToJson(
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
      required final List<Question> questions}) = _$_SetOfQuestion;

  factory _SetOfQuestion.fromJson(Map<String, dynamic> json) =
      _$_SetOfQuestion.fromJson;

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
  _$$_SetOfQuestionCopyWith<_$_SetOfQuestion> get copyWith =>
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
abstract class _$$_QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$$_QuestionCopyWith(
          _$_Question value, $Res Function(_$_Question) then) =
      __$$_QuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String questionTitle, String questionAnswer, List<Answers> answers});
}

/// @nodoc
class __$$_QuestionCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$_Question>
    implements _$$_QuestionCopyWith<$Res> {
  __$$_QuestionCopyWithImpl(
      _$_Question _value, $Res Function(_$_Question) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionTitle = null,
    Object? questionAnswer = null,
    Object? answers = null,
  }) {
    return _then(_$_Question(
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
class _$_Question implements _Question {
  _$_Question(
      {required this.questionTitle,
      required this.questionAnswer,
      required final List<Answers> answers})
      : _answers = answers;

  factory _$_Question.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Question &&
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
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      __$$_QuestionCopyWithImpl<_$_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  factory _Question(
      {required final String questionTitle,
      required final String questionAnswer,
      required final List<Answers> answers}) = _$_Question;

  factory _Question.fromJson(Map<String, dynamic> json) = _$_Question.fromJson;

  @override
  String get questionTitle;
  @override
  String get questionAnswer;
  @override
  List<Answers> get answers;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
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
abstract class _$$_AnswersCopyWith<$Res> implements $AnswersCopyWith<$Res> {
  factory _$$_AnswersCopyWith(
          _$_Answers value, $Res Function(_$_Answers) then) =
      __$$_AnswersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String answersId, String answersContent});
}

/// @nodoc
class __$$_AnswersCopyWithImpl<$Res>
    extends _$AnswersCopyWithImpl<$Res, _$_Answers>
    implements _$$_AnswersCopyWith<$Res> {
  __$$_AnswersCopyWithImpl(_$_Answers _value, $Res Function(_$_Answers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answersId = null,
    Object? answersContent = null,
  }) {
    return _then(_$_Answers(
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
class _$_Answers implements _Answers {
  _$_Answers({required this.answersId, required this.answersContent});

  factory _$_Answers.fromJson(Map<String, dynamic> json) =>
      _$$_AnswersFromJson(json);

  @override
  final String answersId;
  @override
  final String answersContent;

  @override
  String toString() {
    return 'Answers(answersId: $answersId, answersContent: $answersContent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Answers &&
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
  _$$_AnswersCopyWith<_$_Answers> get copyWith =>
      __$$_AnswersCopyWithImpl<_$_Answers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswersToJson(
      this,
    );
  }
}

abstract class _Answers implements Answers {
  factory _Answers(
      {required final String answersId,
      required final String answersContent}) = _$_Answers;

  factory _Answers.fromJson(Map<String, dynamic> json) = _$_Answers.fromJson;

  @override
  String get answersId;
  @override
  String get answersContent;
  @override
  @JsonKey(ignore: true)
  _$$_AnswersCopyWith<_$_Answers> get copyWith =>
      throw _privateConstructorUsedError;
}
