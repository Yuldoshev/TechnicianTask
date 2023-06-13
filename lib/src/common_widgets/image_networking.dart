import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../utils/images.dart';

class ImageNetworking extends StatelessWidget {
  final String? imageUrl;
  final double? height;
  final double? width;
  final BoxFit? boxFit;
  const ImageNetworking(
      {super.key,
      required this.imageUrl,
      this.height,
      this.width,
      this.boxFit});
  @override
  Widget build(BuildContext context) {
    return (imageUrl ?? '').isEmpty
        ? const SizedBox()
        : CachedNetworkImage(
            height: height,
            width: width,
            filterQuality: FilterQuality.medium,
            imageUrl: imageUrl ?? '',
            placeholder: (context, url) => Center(
              child: Image.asset(
                Images.placeholderImage,
                fit: BoxFit.fitHeight,
              ),
            ),
            errorWidget: (context, url, error) => Image.asset(
              Images.placeholderImage,
            ),
            fit: boxFit,
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: boxFit,
                ),
              ),
            ),
          );
  }
}
