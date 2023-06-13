import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/src/common_widgets/app_bar2.dart';
import 'package:food_app/src/common_widgets/image_networking.dart';
import 'package:food_app/src/features/sub_category/controller/controller.dart';
import 'package:food_app/src/features/sub_category/widgets/detail_screen.dart';
import 'package:food_app/src/utils/styles.dart';

import '../../common_widgets/progress_indicator.dart';
import '../../utils/color_resources.dart';

class SubCategoryScreen extends ConsumerWidget {
  const SubCategoryScreen({super.key, required this.id, required this.name});
  final int id;
  final String name;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final subCategoryList = ref.watch(subCategoryProvider).subCategoryList;
    final isLoading = ref.watch(subCategoryProvider).isLoading;
    final tegs = ref.watch(subCategoryProvider).tags;
    return Scaffold(
      appBar: AppBarCustom2(
        title: name,
      ),
      body: isLoading
          ? const LoadingIndicator()
          : ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: tegs.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                              onTap: () {
                                ref
                                    .read(subCategoryProvider.notifier)
                                    .setList(tegs[index]);
                              },
                              child: Container(
                                  width: 94,
                                  color: tegs[index].isSelected
                                      ? ColorResources.color3364E0
                                      : ColorResources.colorEFEEEC,
                                  child: Center(
                                      child: Text(
                                    tegs[index].tag,
                                    style: tegs[index].isSelected
                                        ? textStyle.copyWith(
                                            color: ColorResources.colorWhite,
                                            fontSize: 14)
                                        : textStyle.copyWith(fontSize: 14),
                                  )))),
                        ),
                      );
                    },
                  ),
                ),
                GridView.builder(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 200,
                    crossAxisCount: 3,
                  ),
                  itemCount: subCategoryList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return DetailScreen(model: subCategoryList[index]);
                          },
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            bottom: 30, left: 16, right: 16),
                        height: 150,
                        child: Column(
                          children: [
                            Container(
                              height: 109,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: ColorResources.colorF8F7F5),
                              child: ImageNetworking(
                                imageUrl: subCategoryList[index].image,
                                height: 109,
                                width: 109,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Expanded(
                              child: Text(
                                subCategoryList[index].name ?? '',
                                style: textStyleMedium.copyWith(
                                    fontSize: 14, letterSpacing: 0.1),
                                maxLines: 3,
                                textAlign: TextAlign.left,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
    );
  }
}
