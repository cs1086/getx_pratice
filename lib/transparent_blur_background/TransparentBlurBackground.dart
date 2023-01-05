
import 'package:flutter/material.dart';
import 'package:getx_pratice/transparent_blur_background/ripple_backdrop_animation.dart';

class TransparentBlurBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Click button to see the page.'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          RippleBackdropAnimatePage.show(
            context: context,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget>[
                Text('This is ripple backdrop animate page.'),
              ],
            ),
            childFade: true,
            duration: 300,
            blurRadius: 20.0,
            bottomButton: const Icon(Icons.visibility),
            bottomHeight: 60.0,
            bottomButtonRotate: false,
          );
        },
        tooltip: 'Push to page',
        child: const Icon(Icons.arrow_forward),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}