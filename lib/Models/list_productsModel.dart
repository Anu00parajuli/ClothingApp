import 'package:flutter/material.dart';

class Products {
  late final int id;
  late final String title, description;
  late final String images;
  late final double rating, price;
  late final bool isFavourite;
  late final bool isPopular;
  late final List Colors;
  late final List Sizes;

  static var product;

  Products({
required this.id,
required this.images,
this.rating = 0.0,
this.isFavourite = false,
required this.title,
required this.price,
required this.description,
this.isPopular = false,
required this.Colors,
required this.Sizes
});
}

// Our demo Products


  List<Products> demoProducts = [
  Products(
    id: 1,
    images: "https://cdn.pixabay.com/photo/2016/11/29/12/13/fence-1869401_960_720.jpg",
    title: 'T-shirt',
    price: 2250.0,
    description: 'T-shirt is my love',
    rating: 2.4,
    isFavourite: true,
    isPopular: true,
    Colors: [
      'red', 'blue' , 'pink'
    ],
    Sizes: [
      'S' , 'L', 'XL' , 'XXL'
    ]
    ),
    Products(
    id: 2,
    images: "https://cdn.pixabay.com/photo/2012/12/27/19/40/chain-link-72864_960_720.jpg",
    title: 'Pant',
    price: 2250.0,
    description: 'T-shirt is my love',
    rating: 2.4,
    isFavourite: true,
    isPopular: true,
    Colors: [
      'red', 'blue' , 'pink'
    ],
    Sizes: [
      'S' , 'L', 'XL' , 'XXL'
    ]
    ),
     Products(
    id: 3,
    images: "https://cdn.pixabay.com/photo/2016/11/29/12/13/fence-1869401_960_720.jpg",
    title: 'Jacket',
    price: 2250.0,
    description: 'T-shirt is my love',
    rating: 2.4,
    isFavourite: true,
    isPopular: true,
    Colors: [
      'red', 'blue' , 'pink'
    ],
    Sizes: [
      'S' , 'L', 'XL' , 'XXL'
    ]
    ),
     Products(
    id: 4,
    images: "https://cdn.pixabay.com/photo/2012/12/27/19/40/chain-link-72864_960_720.jpg",
    title: 'Hoodie',
    price: 2250.0,
    description: 'T-shirt is my love',
    rating: 2.4,
    isFavourite: true,
    isPopular: true,
    Colors: [
      'red', 'blue' , 'pink'
    ],
    Sizes: [
      'S' , 'L', 'XL' , 'XXL'
    ]
    ),
     Products(
    id: 5,
    images: "https://cdn.pixabay.com/photo/2016/11/29/12/13/fence-1869401_960_720.jpg",
    title: 'Saree',
    price: 2250.0,
    description: 'T-shirt is my love',
    rating: 2.4,
    isFavourite: true,
    isPopular: true,
    Colors: [
      'red', 'blue' , 'pink'
    ],
    Sizes: [
      'S' , 'L', 'XL' , 'XXL'
    ]
    ),
    Products(
    id: 6,
    images: "https://cdn.pixabay.com/photo/2012/12/27/19/40/chain-link-72864_960_720.jpg",
    title: 'Kurtha',
    price: 2250.0,
    description: 'T-shirt is my love',
    rating: 2.4,
    isFavourite: true,
    isPopular: true,
    Colors: [
      'red', 'blue' , 'pink'
    ],
    Sizes: [
      'S' , 'L', 'XL' , 'XXL'
    ]
    ),

];