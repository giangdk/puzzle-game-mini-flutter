// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LeaderBoardModel _$LeaderBoardModelFromJson(Map<String, dynamic> json) {
  return _LeaderBoardModel.fromJson(json);
}

/// @nodoc
mixin _$LeaderBoardModel {
  String get name => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaderBoardModelCopyWith<LeaderBoardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderBoardModelCopyWith<$Res> {
  factory $LeaderBoardModelCopyWith(
          LeaderBoardModel value, $Res Function(LeaderBoardModel) then) =
      _$LeaderBoardModelCopyWithImpl<$Res, LeaderBoardModel>;
  @useResult
  $Res call({String name, int score});
}

/// @nodoc
class _$LeaderBoardModelCopyWithImpl<$Res, $Val extends LeaderBoardModel>
    implements $LeaderBoardModelCopyWith<$Res> {
  _$LeaderBoardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LeaderBoardModelCopyWith<$Res>
    implements $LeaderBoardModelCopyWith<$Res> {
  factory _$$_LeaderBoardModelCopyWith(
          _$_LeaderBoardModel value, $Res Function(_$_LeaderBoardModel) then) =
      __$$_LeaderBoardModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int score});
}

/// @nodoc
class __$$_LeaderBoardModelCopyWithImpl<$Res>
    extends _$LeaderBoardModelCopyWithImpl<$Res, _$_LeaderBoardModel>
    implements _$$_LeaderBoardModelCopyWith<$Res> {
  __$$_LeaderBoardModelCopyWithImpl(
      _$_LeaderBoardModel _value, $Res Function(_$_LeaderBoardModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? score = null,
  }) {
    return _then(_$_LeaderBoardModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeaderBoardModel implements _LeaderBoardModel {
  _$_LeaderBoardModel({required this.name, required this.score});

  factory _$_LeaderBoardModel.fromJson(Map<String, dynamic> json) =>
      _$$_LeaderBoardModelFromJson(json);

  @override
  final String name;
  @override
  final int score;

  @override
  String toString() {
    return 'LeaderBoardModel(name: $name, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeaderBoardModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeaderBoardModelCopyWith<_$_LeaderBoardModel> get copyWith =>
      __$$_LeaderBoardModelCopyWithImpl<_$_LeaderBoardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeaderBoardModelToJson(
      this,
    );
  }
}

abstract class _LeaderBoardModel implements LeaderBoardModel {
  factory _LeaderBoardModel(
      {required final String name,
      required final int score}) = _$_LeaderBoardModel;

  factory _LeaderBoardModel.fromJson(Map<String, dynamic> json) =
      _$_LeaderBoardModel.fromJson;

  @override
  String get name;
  @override
  int get score;
  @override
  @JsonKey(ignore: true)
  _$$_LeaderBoardModelCopyWith<_$_LeaderBoardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
