import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/src/features/sub_category/controller/controller_state.dart';
import 'package:food_app/src/features/sub_category/data/sub_category_repository.dart';
import 'package:food_app/src/features/sub_category/model/category_tag.dart';
import 'package:food_app/src/features/sub_category/model/sub_category_model.dart';

final subCategoryProvider =
    StateNotifierProvider.autoDispose<SubCategoryNotifier, SubCategoryState>(
        (ref) => SubCategoryNotifier(ref));

class SubCategoryNotifier extends StateNotifier<SubCategoryState> {
  final Ref ref;
  final List<SubCategoryModel> list = [];
  SubCategoryNotifier(this.ref) : super(const SubCategoryState()) {
    loadData();
  }

  loadData() async {
    state = state.copyWith(isLoading: true);
    final data = await ref.read(subCategoryRepository).getSubCategoryData();
    Set<String> tags = {};
    data.forEach((element) {
      element.tegs?.forEach((tag) {
        tags.add(tag);
      });
    });
    var tagList =
        tags.map((tag) => CategoryTag(tag: tag, isSelected: false)).toList();

    list.clear();
    list.addAll(data);
    tagList[0] = tagList[0].copyWith(isSelected: true);
    var datas = list
        .where((element) => element.tegs?.contains(tagList[0].tag) ?? false)
        .toList();
    if (mounted) {
      state = state.copyWith(
        subCategoryList: datas,
        tags: tagList,
        isLoading: false,
      );
    }
  }

  void setList(CategoryTag tag) async {
    var newTags = state.tags.map((element) {
      if (element == tag) {
        element = element.copyWith(isSelected: true);
      } else if (element.isSelected) {
        element = element.copyWith(isSelected: false);
      }
      return element;
    }).toList();
    final selectedList = list
        .where((element) => element.tegs?.contains(tag.tag) ?? false)
        .toList();
    if (mounted) {
      state = state.copyWith(
        subCategoryList: selectedList,
        tags: newTags,
        isLoading: false,
      );
    }
  }
}
