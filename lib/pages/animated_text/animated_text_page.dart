import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
//練習AnimatedText
class AnimatedText extends StatelessWidget {
  const AnimatedText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              Expanded(
                  child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText("Hello world!",
                      textStyle:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                      speed: Duration(milliseconds: 500))
                ],
                stopPauseOnTap: true,//點下去的時候動畫暫停，測試好像沒用
                pause: Duration(seconds: 3),//每次輪動畫之間的間隔
                totalRepeatCount: 3,//播放幾次
              )),
              Expanded(
                child: AnimatedTextKit(
                  animatedTexts: [
                    FadeAnimatedText(
                      'Fade First',
                      textStyle: TextStyle(
                          fontSize: 32.0, fontWeight: FontWeight.bold),
                    ),
                    ScaleAnimatedText(
                      'Then Scale',
                      textStyle:
                          TextStyle(fontSize: 70.0, fontFamily: 'Canterbury'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
