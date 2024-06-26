// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_color_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductColorModel _$ProductColorModelFromJson(Map<String, dynamic> json) {
  return _ProductColorModel.fromJson(json);
}

/// @nodoc
mixin _$ProductColorModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductColorModelCopyWith<ProductColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductColorModelCopyWith<$Res> {
  factory $ProductColorModelCopyWith(
          ProductColorModel value, $Res Function(ProductColorModel) then) =
      _$ProductColorModelCopyWithImpl<$Res, ProductColorModel>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$ProductColorModelCopyWithImpl<$Res, $Val extends ProductColorModel>
    implements $ProductColorModelCopyWith<$Res> {
  _$ProductColorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductColorModelCopyWith<$Res>
    implements $ProductColorModelCopyWith<$Res> {
  factory _$$_ProductColorModelCopyWith(_$_ProductColorModel value,
          $Res Function(_$_ProductColorModel) then) =
      __$$_ProductColorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$_ProductColorModelCopyWithImpl<$Res>
    extends _$ProductColorModelCopyWithImpl<$Res, _$_ProductColorModel>
    implements _$$_ProductColorModelCopyWith<$Res> {
  __$$_ProductColorModelCopyWithImpl(
      _$_ProductColorModel _value, $Res Function(_$_ProductColorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_ProductColorModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductColorModel implements _ProductColorModel {
  const _$_ProductColorModel({this.id, this.name});

  factory _$_ProductColorModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductColorModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'ProductColorModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductColorModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductColorModelCopyWith<_$_ProductColorModel> get copyWith =>
      __$$_ProductColorModelCopyWithImpl<_$_ProductColorModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductColorModelToJson(
      this,
    );
  }
}

abstract class _ProductColorModel implements ProductColorModel {
  const factory _ProductColorModel({final int? id, final String? name}) =
      _$_ProductColorModel;

  factory _ProductColorModel.fromJson(Map<String, dynamic> json) =
      _$_ProductColorModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_ProductColorModelCopyWith<_$_ProductColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
