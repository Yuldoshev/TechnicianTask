import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/src/common_widgets/app_bar.dart';
import '../../common_widgets/progress_indicator.dart';
import '../../constants/keys.dart';
import '../../utils/color_resources.dart';
import 'controller/controller.dart';
import 'widgets/product_item_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryList = ref.watch(categoryProvider).categoryList;
    final isLoading = ref.watch(categoryProvider).isLoading;
    return Scaffold(
        appBar: const AppBarCustom1(
          title: 'Санкт-Петербург',
          subtitle: "12 Августа, 2023",
        ),
        key: Keys.homeScreenKey,
        backgroundColor: ColorResources.colorWhite,
        body: RefreshIndicator(
          child: isLoading
              ? const LoadingIndicator()
              : ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: categoryList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ProductItemWidget(
                      model: categoryList[index],
                      id: index,
                    );
                  },
                ),
          onRefresh: () async {
            ref.read(categoryProvider.notifier).loadData();
          },
        ));
  }
}
