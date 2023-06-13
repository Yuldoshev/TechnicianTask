import 'package:freezed_annotation/freezed_annotation.dart';

import 'sub_category_model.dart';

part 'sub_categories.freezed.dart';
part 'sub_categories.g.dart';

@freezed
class SubCategories with _$SubCategories {
  const factory SubCategories({
    @JsonKey(name: 'dishes') List<SubCategoryModel>? subCategory,
  }) = _SubCategories;

  factory SubCategories.fromJson(Map<String, Object?> json) =>
      _$SubCategoriesFromJson(json);
}
