
import 'package:flutter/material.dart';
import '../../component/image_cache.dart';

class ImageCachePage extends StatelessWidget {
  const ImageCachePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CachedImagePage')),
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ImageCacheWidget(
                    imageUrl:
                    "https://janstockcoin.com/wp-content/uploads/2021/06/pexels-photo-747964-scaled.jpeg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
