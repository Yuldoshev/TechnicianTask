// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubCategoryModel _$$_SubCategoryModelFromJson(Map<String, dynamic> json) =>
    _$_SubCategoryModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: json['price'] as int?,
      weight: json['weight'] as int?,
      description: json['description'] as String?,
      tegs: (json['tegs'] as List<dynamic>?)?.map((e) => e as String).toList(),
      image: json['image_url'] as String?,
    );

Map<String, dynamic> _$$_SubCategoryModelToJson(_$_SubCategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'weight': instance.weight,
      'description': instance.description,
      'tegs': instance.tegs,
      'image_url': instance.image,
    };
