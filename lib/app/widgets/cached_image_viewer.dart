import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:onex/app/assets/assets.dart';

// ignore: must_be_immutable
class CachedImageViewer extends StatelessWidget {
  String? url;

  CachedImageViewer({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url ?? "",
      placeholder: (context, url) =>
          const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) {
        return Image.asset(
          ImageAsset.splashImage,
          fit: BoxFit.cover,
        );
      },
      fit: BoxFit.cover,
    );
  }
}
