import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://lh3.googleusercontent.com/FK8EcHV1SJGHeTUJCsUhCQl0hmQu-QbC4wG6bM59S0v-rLv-jQl16YC3LQ4x-ZpPwS1cUs_4Idap57kYgcTCOQFB',
  'https://shopforaurelia.com/images/aurelia-logo.jpg',
  'https://upload.wikimedia.org/wikipedia/en/thumb/e/e4/Herm%C3%A8s.svg/1200px-Herm%C3%A8s.svg.png',
  'https://m.media-amazon.com/images/S/abs-image-upload-na/b/AmazonStores/ATVPDKIKX0DER/db1a93c16294b153654e8fec57fb3b38.w400.h400.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Zara_Logo.svg/1200px-Zara_Logo.svg.png',
  'https://www2.hm.com/hm-logo.png',

];

class Branches extends StatefulWidget {
  const Branches({super.key});

  @override
  State<Branches> createState() => _BranchesState();
}

class _BranchesState extends State<Branches> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
                  bottom: 10,
                ),
                child: CarouselSlider.builder(
                  itemCount: imgList.length,
                  itemBuilder: (context, index, realIndex) {
                    //print(imgList[index]);
                    return Container(
                      child: Image.network(imgList[index]),
                    );
                  },
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(seconds: 1),
                  ),
                ),
    );
  }
}