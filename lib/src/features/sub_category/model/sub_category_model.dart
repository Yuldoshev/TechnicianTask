import 'package:freezed_annotation/freezed_annotation.dart';
part 'sub_category_model.freezed.dart';
part 'sub_category_model.g.dart';

@freezed
class SubCategoryModel with _$SubCategoryModel {
  const factory SubCategoryModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "price") int? price,
    @JsonKey(name: "weight") int? weight,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "tegs") List<String>? tegs,
    @JsonKey(name: "image_url") String? image,
  }) = _SubCategoryModel;

  factory SubCategoryModel.fromJson(Map<String, Object?> json) =>
      _$SubCategoryModelFromJson(json);
}
