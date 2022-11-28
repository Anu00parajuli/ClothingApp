import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://www.thefoodius.com/wp-content/uploads/2021/07/KFC-Kalanki-1024x585.jpg',
  'https://media.istockphoto.com/id/1321150254/photo/kfc-store-calgary.jpg',
  'https://www.nrn.com/sites/nrn.com/files/styles/article_featured_retina/public/KFC%20Westfield-456.jpg',
  'https://www.thefoodius.com/wp-content/uploads/2021/07/KFC-Kalanki-1024x585.jpg',
  'https://suvadin.com/uploads/info/1483964347_1045236_158160617702254_1808954417_n.jpgs',
  'https://securecdn.pymnts.com/wp-content/uploads/2021/05/kfc.jpg'
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
                    print(index);
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