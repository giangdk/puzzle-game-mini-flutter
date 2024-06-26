// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int?,
      errorDescription: json['errorDescription'] as String?,
      name: json['name'] as String?,
      sku: json['sku'] as String?,
      image: json['image'] as String?,
      color: json['color'] as int?,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'errorDescription': instance.errorDescription,
      'name': instance.name,
      'sku': instance.sku,
      'image': instance.image,
      'color': instance.color,
    };
