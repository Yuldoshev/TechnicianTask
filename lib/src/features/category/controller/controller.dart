import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/category_repository.dart';
import 'controller_state.dart';

final categoryProvider =
    StateNotifierProvider.autoDispose<CategoryNotifier, CategoryState>(
        (ref) => CategoryNotifier(ref));

class CategoryNotifier extends StateNotifier<CategoryState> {
  final Ref ref;
  CategoryNotifier(this.ref) : super(const CategoryState()) {
    loadData();
  }

  loadData() async {
    state = state.copyWith(isLoading: true);
    final data = await ref.read(categoryRepository).getCategoryData();
    if (mounted) {
      state = state.copyWith(
        categoryList: data,
        isLoading: false,
      );
    }
  }
}
