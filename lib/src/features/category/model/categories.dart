import 'package:food_app/src/features/category/model/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories.freezed.dart';
part 'categories.g.dart';

@freezed
class Categories with _$Categories {
  const factory Categories({
    @JsonKey(name: 'сategories') List<CategoryModel>? category,
  }) = _Categories;

  factory Categories.fromJson(Map<String, Object?> json) =>
      _$CategoriesFromJson(json);
}
