import 'package:flutter/material.dart';

import '../constants/app_sizes.dart';
import '../utils/color_resources.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final ButtonType type;
  final bool? isShadow;
  final bool? isActive;

  const PrimaryButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.type,
    this.isShadow,
    this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ElevatedButton(
            style: buttonStyle(type, context),
            onPressed: (isActive ?? true) ? onTap : () {},
            child: Text(
              title,
              style: buttonTextStyle(type),
            )),
        (isActive ?? true)
            ? const SizedBox()
            : Container(
                width: MediaQuery.of(context).size.width,
                height: 45,
                color: Colors.white54,
              )
      ],
    );
  }

  ButtonStyle buttonStyle(ButtonType type, BuildContext context) {
    final ButtonStyle yellowStyle = TextButton.styleFrom(
      backgroundColor: ColorResources.colorWhite,
      minimumSize: Size(MediaQuery.of(context).size.width, 45),
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: isShadow ?? false ? 5.0 : 0.0,
    );
    final ButtonStyle paleYellowStyle = TextButton.styleFrom(
      backgroundColor: ColorResources.colorBlack.withOpacity(0.5),
      minimumSize: Size(MediaQuery.of(context).size.width, 45),
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: isShadow ?? false ? 5.0 : 0.0,
    );
    final ButtonStyle grayStyle = TextButton.styleFrom(
      backgroundColor: ColorResources.colorWhite,
      minimumSize: Size(MediaQuery.of(context).size.width, 45),
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: isShadow ?? false ? 5.0 : 0.0,
    );
    final ButtonStyle blackStyle = TextButton.styleFrom(
      backgroundColor: ColorResources.colorWhite,
      minimumSize: Size(MediaQuery.of(context).size.width, 45),
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: isShadow ?? false ? 5.0 : 0.0,
    );
    final ButtonStyle borderStyle = TextButton.styleFrom(
      backgroundColor: Colors.white,
      minimumSize: Size(MediaQuery.of(context).size.width, 45),
      padding: EdgeInsets.zero,
      elevation: isShadow ?? false ? 5.0 : 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          width: 2.0,
          color: ColorResources.colorWhite,
        ),
      ),
    );
    final ButtonStyle textButtonStyle = TextButton.styleFrom(
      backgroundColor: Colors.white,
      minimumSize: Size(MediaQuery.of(context).size.width, 45),
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 0.0,
    );
    switch (type) {
      case ButtonType.yellow:
        return yellowStyle;
      case ButtonType.paleYellow:
        return paleYellowStyle;
      case ButtonType.border:
        return borderStyle;
      case ButtonType.text:
        return textButtonStyle;
      case ButtonType.black:
        return blackStyle;
      case ButtonType.gray:
        return grayStyle;
    }
  }

  TextStyle buttonTextStyle(ButtonType type) {
    const buttonStyle = TextStyle(
        fontFamily: 'Roboto',
        fontSize: Pixels.px13,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
        color: ColorResources.colorEFEEEC);
    const buttonStyleForBlack = TextStyle(
        fontFamily: 'Roboto',
        fontSize: Pixels.px13,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
        color: Colors.white);
    const textButtonStyle = TextStyle(
        fontFamily: 'Roboto',
        fontSize: Pixels.px13,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        color: ColorResources.colorWhite);

    switch (type) {
      case ButtonType.yellow:
        return buttonStyle;
      case ButtonType.paleYellow:
        return buttonStyle;
      case ButtonType.border:
        return buttonStyle;
      case ButtonType.text:
        return textButtonStyle;
      case ButtonType.black:
        return buttonStyleForBlack;
      case ButtonType.gray:
        return buttonStyle;
    }
  }
}

enum ButtonType { yellow, border, text, black, gray, paleYellow }
