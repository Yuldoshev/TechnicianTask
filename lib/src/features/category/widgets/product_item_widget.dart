import 'package:flutter/material.dart';
import 'package:food_app/src/features/category/model/category_model.dart';
import 'package:food_app/src/features/sub_category/controller/controller.dart';
import 'package:food_app/src/features/sub_category/sub_category_screen.dart';
import 'package:go_router/go_router.dart';

import '../../../common_widgets/image_networking.dart';
import '../../../routing/app_router.dart';
import '../../../utils/styles.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({super.key, this.model, required this.id});
  final CategoryModel? model;
  final int id;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.only(left: 16, right: 16, top: 4, bottom: 4),
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              context.pushNamed(AppRoute.subcategory.name, pathParameters: {
                'id': model?.id?.toString() ?? '',
                'name': model?.name ?? ''
              });
            },
            child: ImageNetworking(
              imageUrl: model?.image,
              height: 160,
            ),
          ),
          Positioned(
            top: 12,
            left: 24,
            child: Text(
              model?.name ?? '',
              style: textStyleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
