import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/src/constants/app_sizes.dart';
import 'package:food_app/src/utils/color_resources.dart';
import 'package:food_app/src/utils/images.dart';

import '../utils/styles.dart';

class AppBarCustom1 extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? subtitle;
  final bool isMain;

  const AppBarCustom1({
    Key? key,
    required this.title,
    this.subtitle,
    this.isMain = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PreferredSize(
          preferredSize: preferredSize,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SvgPicture.asset(Images.location),
                    ),
                    gapW8,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: textStyle,
                        ),
                        subtitle == '' ? gapH2 : gapH4,
                        subtitle == ''
                            ? const SizedBox()
                            : Text(
                                subtitle ?? '',
                                style: textStyle.copyWith(
                                    color: ColorResources.colorBlack
                                        .withOpacity(0.5),
                                    fontSize: Pixels.px14),
                              )
                      ],
                    ),
                  ],
                ),
                Image.asset(Images.avatar),
              ],
            ),
          )),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 18);
}
