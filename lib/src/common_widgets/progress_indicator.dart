import 'package:flutter/material.dart';
import 'package:food_app/src/utils/color_resources.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
          height: 30,
          width: 30,
          child: CircularProgressIndicator.adaptive(
            backgroundColor: ColorResources.color3364E0,
          )),
    );
  }
}
