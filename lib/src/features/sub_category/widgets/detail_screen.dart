import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/src/common_widgets/image_networking.dart';
import 'package:food_app/src/constants/app_sizes.dart';
import 'package:food_app/src/features/sub_category/model/sub_category_model.dart';
import 'package:food_app/src/utils/color_resources.dart';
import 'package:food_app/src/utils/images.dart';
import 'package:food_app/src/utils/styles.dart';
import 'package:go_router/go_router.dart';

import '../../../hive_provider/hive_basket_controller.dart';
import '../../../routing/app_router.dart';

// ignore: must_be_immutable
class DetailScreen extends ConsumerStatefulWidget {
  DetailScreen({super.key, required this.model});
  SubCategoryModel model;

  @override
  ConsumerState<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends ConsumerState<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    bool isInCart =
        ref.read(hiveBasketProvider.notifier).isAddCart(widget.model.id ?? 0);
    final basketList = ref.watch(hiveBasketProvider);

    return AlertDialog(
      actionsPadding: const EdgeInsets.all(16),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      actions: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: ColorResources.colorF8F7F5),
                  child: ImageNetworking(
                    imageUrl: widget.model.image,
                    height: 232,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 56,
                  child: SvgPicture.asset(
                    Images.favorite,
                    height: 40,
                    width: 40,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: SvgPicture.asset(
                      Images.close,
                      height: 40,
                      width: 40,
                    ),
                  ),
                )
              ],
            ),
            Text(
              "${widget.model.name}",
              style: textStyleMedium.copyWith(height: .84),
            ),
            gapH8,
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "${widget.model.price} ₽",
                  style: textStyle.copyWith(fontSize: 14),
                ),
                //390 ₽ · 420г
                TextSpan(
                  text: " · ${widget.model.weight}г",
                  style: textStyle.copyWith(
                      fontSize: 14,
                      color: ColorResources.colorBlack.withOpacity(0.4)),
                )
              ]),
            ),
            gapH8,
            Text(
              "${widget.model.description}",
              style: textStyle.copyWith(fontSize: 14),
            ),
            gapH14,
            ElevatedButton(
                style: TextButton.styleFrom(
                  backgroundColor: ColorResources.color3364E0,
                  minimumSize: Size(MediaQuery.of(context).size.width, 45),
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 1,
                ),
                onPressed: () {
                  basketList
                          .where((element) => element.id == widget.model.id)
                          .isNotEmpty
                      ? {context.pushNamed(AppRoute.cart.name), context.pop()}
                      : {
                          ref.read(hiveBasketProvider.notifier).addItem(
                                widget.model.id ?? 0,
                                widget.model.name ?? '',
                                widget.model.price ?? 0,
                                widget.model.weight ?? 0,
                                widget.model.image ?? '',
                                1,
                              )
                        };
                },
                child: isInCart
                    ? Text(
                        'В корзине',
                        style: textStyleMedium.copyWith(
                          color: ColorResources.colorWhite,
                          fontSize: 16,
                        ),
                      )
                    : Text(
                        "Добавить в корзину",
                        style: textStyleMedium.copyWith(
                          color: ColorResources.colorWhite,
                          fontSize: 16,
                        ),
                      ))
          ],
        ),
      ],
    );
  }
}
