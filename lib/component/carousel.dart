
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class CarouselSlide extends StatelessWidget {
  const CarouselSlide({Key? key,required this.dataList,}) : super(key: key);
  final List dataList;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(options: CarouselOptions(),items: dataList.map((element){
      final index = dataList.indexOf(element);
      return GestureDetector(
        onTap: () =>(){},
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(color: Colors.transparent),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                    color: Colors.primaries[
                    Random().nextInt(Colors.primaries.length)]),
              ),
              Positioned(
                child: Text(
                  "$index",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      );
    }).toList(),);
  }
}
