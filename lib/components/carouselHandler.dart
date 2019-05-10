import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://download.hipwallpaper.com/desktop/1920/1080/40/9/aImrxE.jpeg?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class MainCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      viewportFraction: 0.9,
      aspectRatio: 2.0,
      autoPlay: true,
      enlargeCenterPage: true,
      pauseAutoPlayOnTouch: Duration(seconds: 3),
      items: imgList.map(
            (url) {
          return Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Image.network(
                url,
                fit: BoxFit.cover,
                width: 1000.0,
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}






//
//class carouselHandler {
//  static final List<String> imgList = [
//    'https://download.hipwallpaper.com/desktop/1920/1080/40/9/aImrxE.jpeg?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
//    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
//    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
//    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
//    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
//    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
//  ];
//static CarouselSlider getCarouselSlider(){
//
//
//return CarouselSlider(
//  viewportFraction: 0.9,
//  aspectRatio: 2.0,
//  autoPlay: true,
//  enlargeCenterPage: true,
//  pauseAutoPlayOnTouch: Duration(seconds: 3),
//  items: imgList.map(
//    (url) {
//      return Container(
//        margin: EdgeInsets.all(5.0),
//        child: ClipRRect(
//          borderRadius: BorderRadius.all(Radius.circular(5.0)),
//        child: Image.network(
//          url,
//          fit: BoxFit.cover,
//          width: 1000.0,
//        ),
//        ),
//      );
//    },
//  ).toList(),
//);
//}
//
////    Widget image_carousel = new Container(
////      height: 250.0,
////      child: Carousel(
////        boxFit: BoxFit.cover,
////        images: [
////          AssetImage('images/c1.jpg'),
////          AssetImage('images/m1.jpeg'),
////          AssetImage('images/m2.jpg'),
////          AssetImage('images/w1.jpeg'),
////          AssetImage('images/w3.jpeg'),
////          AssetImage('images/w4.jpeg'),
////        ],
////        autoplay: true,
////        animationCurve: Curves.fastOutSlowIn, //
////        animationDuration: Duration(milliseconds: 1000),
////        dotSize: 4.0,
////        showIndicator: true,
////        indicatorBgPadding: 5,
////
////
////      ),
////    );
//
//
//}