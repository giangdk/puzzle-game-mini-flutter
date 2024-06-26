// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupQuestion _$GroupQuestionFromJson(Map<String, dynamic> json) {
  return _GroupQuestion.fromJson(json);
}

/// @nodoc
mixin _$GroupQuestion {
  String get groupId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupQuestionCopyWith<GroupQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupQuestionCopyWith<$Res> {
  factory $GroupQuestionCopyWith(
          GroupQuestion value, $Res Function(GroupQuestion) then) =
      _$GroupQuestionCopyWithImpl<$Res, GroupQuestion>;
  @useResult
  $Res call({String groupId, String id});
}

/// @nodoc
class _$GroupQuestionCopyWithImpl<$Res, $Val extends GroupQuestion>
    implements $GroupQuestionCopyWith<$Res> {
  _$GroupQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupQuestionCopyWith<$Res>
    implements $GroupQuestionCopyWith<$Res> {
  factory _$$_GroupQuestionCopyWith(
          _$_GroupQuestion value, $Res Function(_$_GroupQuestion) then) =
      __$$_GroupQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String groupId, String id});
}

/// @nodoc
class __$$_GroupQuestionCopyWithImpl<$Res>
    extends _$GroupQuestionCopyWithImpl<$Res, _$_GroupQuestion>
    implements _$$_GroupQuestionCopyWith<$Res> {
  __$$_GroupQuestionCopyWithImpl(
      _$_GroupQuestion _value, $Res Function(_$_GroupQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? id = null,
  }) {
    return _then(_$_GroupQuestion(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupQuestion implements _GroupQuestion {
  _$_GroupQuestion({required this.groupId, this.id = ""});

  factory _$_GroupQuestion.fromJson(Map<String, dynamic> json) =>
      _$$_GroupQuestionFromJson(json);

  @override
  final String groupId;
  @override
  @JsonKey()
  final String id;

  @override
  String toString() {
    return 'GroupQuestion(groupId: $groupId, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupQuestion &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, groupId, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupQuestionCopyWith<_$_GroupQuestion> get copyWith =>
      __$$_GroupQuestionCopyWithImpl<_$_GroupQuestion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupQuestionToJson(
      this,
    );
  }
}

abstract class _GroupQuestion implements GroupQuestion {
  factory _GroupQuestion({required final String groupId, final String id}) =
      _$_GroupQuestion;

  factory _GroupQuestion.fromJson(Map<String, dynamic> json) =
      _$_GroupQuestion.fromJson;

  @override
  String get groupId;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_GroupQuestionCopyWith<_$_GroupQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}
