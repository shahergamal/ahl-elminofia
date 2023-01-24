import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
CarouselSlider build_carouselslider_1() {
  List imageList = [
    'images/11111.jpg',
    'images/11111.jpg',
    'images/11111.jpg',
  ];
  return CarouselSlider(
    items: imageList.map((imageurl) {
      // ignore: sized_box_for_whitespace
      return Container(
        width: double.infinity,
        //margin: const EdgeInsets.symmetric(horizontal: 2),
        child: Image.asset(
          imageurl,
          fit: BoxFit.fill,
        ),
      );
    }).toList(),
    options: CarouselOptions(
        reverse: true,
        height: 180,
        initialPage: 0,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        scrollDirection: Axis.horizontal,
        autoPlayAnimationDuration: const Duration(milliseconds: 1000)),
  );
}
