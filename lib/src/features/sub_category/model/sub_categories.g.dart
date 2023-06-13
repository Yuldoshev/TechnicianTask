// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubCategories _$$_SubCategoriesFromJson(Map<String, dynamic> json) =>
    _$_SubCategories(
      subCategory: (json['dishes'] as List<dynamic>?)
          ?.map((e) => SubCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SubCategoriesToJson(_$_SubCategories instance) =>
    <String, dynamic>{
      'dishes': instance.subCategory,
    };
