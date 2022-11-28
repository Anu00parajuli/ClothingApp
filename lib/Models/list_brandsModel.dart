import 'package:flutter/material.dart';

class BrandsModel{
  late final int id;
  late final String title , description;
  late final String logo ;

  BrandsModel({
  required this.id,
  required this.title,
  required this.description,
  required this.logo
 });
}

//Our Demo Brands

List<BrandsModel> demoBrands =[
  BrandsModel(id: 1, title: 'Nike', description: 'Nike is nice', logo: 'https://lh3.googleusercontent.com/FK8EcHV1SJGHeTUJCsUhCQl0hmQu-QbC4wG6bM59S0v-rLv-jQl16YC3LQ4x-ZpPwS1cUs_4Idap57kYgcTCOQFB'),
  BrandsModel(id: 2, title: 'Aurelia', description: 'Aurelia is nice', logo: 'https://shopforaurelia.com/images/aurelia-logo.jpg'),
  BrandsModel(id: 3, title: 'Hermes', description: 'Hermes is nice', logo: 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e4/Herm%C3%A8s.svg/1200px-Herm%C3%A8s.svg.png'),
  BrandsModel(id: 4, title: 'Levis', description: 'Levis is nice', logo: 'https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-thumbnail/s3/0015/0003/brand.gif?itok=nxUfLayt'),
  BrandsModel(id: 5, title: 'Zara', description: 'Zara is nice', logo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Zara_Logo.svg/1200px-Zara_Logo.svg.png'),
  BrandsModel(id: 6, title: 'H&M', description: 'H&M is nice', logo: 'https://www2.hm.com/hm-logo.png')
];

