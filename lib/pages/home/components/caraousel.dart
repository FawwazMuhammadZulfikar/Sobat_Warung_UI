// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:sobat_warung_ui/constant.dart';

class SliderCarousel extends StatefulWidget {
  const SliderCarousel({super.key});

  @override
  State<SliderCarousel> createState() => _SliderCarouselState();
}

class _SliderCarouselState extends State<SliderCarousel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 30.0),
      child: Container(
          height: 200,
          child: Carousel(
            images: const [
              AssetImage('assets/images_splash/1.png'),
              AssetImage('assets/images_splash/2.png'),
              AssetImage('assets/images_splash/3.png'),
            ],
            borderRadius: true,
            dotBgColor: Colors.transparent,
            dotIncreasedColor: kPrimaryColor,
            radius: Radius.circular(20),
            animationCurve: Curves.fastLinearToSlowEaseIn,
            animationDuration: Duration(
              milliseconds: 1000,
            )
            
          )),
    );
  }
}
