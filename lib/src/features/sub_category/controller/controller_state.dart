// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/category_tag.dart';
import '../model/sub_category_model.dart';

part 'controller_state.freezed.dart';

@freezed
abstract class SubCategoryState with _$SubCategoryState {
  const factory SubCategoryState({
    @Default([]) List<SubCategoryModel> subCategoryList,
    @Default([]) List<CategoryTag> tags,
    @Default(true) bool isLoading,
  }) = _SubCategoryState;

  const SubCategoryState._();
}
