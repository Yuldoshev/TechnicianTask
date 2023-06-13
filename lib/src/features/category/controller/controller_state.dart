import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/category_model.dart';

part 'controller_state.freezed.dart';

@freezed
abstract class CategoryState with _$CategoryState {
  const factory CategoryState({
    @Default([]) List<CategoryModel> categoryList,
    @Default(true) bool isLoading,
  }) = _CategoryState;

  const CategoryState._();
}
