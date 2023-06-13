import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/src/common_widgets/image_networking.dart';
import 'package:food_app/src/constants/app_sizes.dart';
import 'package:food_app/src/extentions/extentions.dart';
import 'package:food_app/src/utils/images.dart';

import '../../common_widgets/app_bar.dart';
import '../../hive_provider/hive_basket_controller.dart';
import '../../utils/color_resources.dart';
import '../../utils/styles.dart';

class BasketScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(hiveBasketProvider);
    double totalSumma = 0.0;
    for (var item in state) {
      totalSumma = totalSumma + ((item.price) * item.count);
    }

    return Scaffold(
      appBar: const AppBarCustom1(
        title: 'Санкт-Петербург',
        subtitle: "12 Августа, 2023",
      ),
      body: ListView.builder(
        itemCount: state.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Container(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: ColorResources.colorF8F7F5,
                    ),
                    child: ImageNetworking(
                      imageUrl: state[index].image,
                      height: 62,
                      width: 62,
                    ),
                  ),
                  gapW8,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state[index].name,
                        style: textStyle.copyWith(fontSize: 14),
                      ),
                      gapH4,
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "${state[index].price} ₽",
                            style: textStyle.copyWith(fontSize: 14),
                          ),
                          //390 ₽ · 420г
                          TextSpan(
                            text: " · ${state[index].weight}г",
                            style: textStyle.copyWith(
                                fontSize: 14,
                                color:
                                    ColorResources.colorBlack.withOpacity(0.4)),
                          )
                        ]),
                      ),
                    ],
                  )
                ]),
                Container(
                  padding: const EdgeInsets.only(left: 6, right: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorResources.colorEFEEEC,
                  ),
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    Row(
                      children: [
                        IconButton(
                            constraints: const BoxConstraints(),
                            padding: EdgeInsets.zero,
                            onPressed: () async {
                              ref.read(hiveBasketProvider.notifier).minusBasket(
                                    state[index].id,
                                  );
                            },
                            icon: SvgPicture.asset(Images.minus)),
                        gapW4,
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            state[index].count.toString(),
                            style: textStyle.copyWith(fontSize: 14),
                          ),
                        ),
                        gapW4,
                        IconButton(
                            constraints: const BoxConstraints(),
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              ref
                                  .read(hiveBasketProvider.notifier)
                                  .plusBasket(state[index].id, 10);
                            },
                            icon: SvgPicture.asset(Images.plus)),
                      ],
                    )
                  ]),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: ElevatedButton(
          style: TextButton.styleFrom(
            backgroundColor: ColorResources.color3364E0,
            minimumSize: Size(MediaQuery.of(context).size.width - 20, 48),
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 1,
          ),
          onPressed: () {},
          child: Text(
            'Оплатить ${totalSumma.showSumma(context)} ₽',
            style: textStyleMedium.copyWith(
              color: ColorResources.colorWhite,
              fontSize: 16,
            ),
          )),
    );
  }
}
