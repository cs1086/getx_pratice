
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageCacheWidget extends StatelessWidget {
  const ImageCacheWidget({Key? key,required this.imageUrl, this.placeholderPath=""}) : super(key: key);
  final String imageUrl;
  final String placeholderPath;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(imageUrl: imageUrl,placeholder: (context, url) {
      return (placeholderPath.isEmpty)
          ? Icon(Icons.photo_library)
          : Image.asset(placeholderPath, fit: BoxFit.contain);
    });

  }
}
