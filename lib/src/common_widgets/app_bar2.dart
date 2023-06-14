import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/src/utils/images.dart';
import 'package:go_router/go_router.dart';

import '../utils/styles.dart';

class AppBarCustom2 extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppBarCustom2({
    Key? key,
    required this.title,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () => context.pop(),
                    child: SvgPicture.asset(Images.arrow_back)),
                Text(
                  title,
                  style: textStyle,
                  textAlign: TextAlign.center,
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
