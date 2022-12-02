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
    images: "https://static-01.daraz.com.np/p/3c577bee5fa6bfae9570983c7d26a282.jpg",
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
    images: "https://static-01.daraz.com.np/p/5b3f91474409ca033aebed75209d808a.jpg",
    title: 'Pant',
    price: 2250.0,
    description: 'I love to wear Pants',
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
    images: "https://static-01.daraz.com.np/p/851edfb3d2b4bc446029d0359312fcf2.jpg",
    title: 'Jacket',
    price: 2250.0,
    description: 'Jacket is my love',
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
    images: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1661285408-timberland-hoodie-1661285401.jpg?crop=1xw:1xh;center,top&resize=480:*",
    title: 'Hoodie',
    price: 2250.0,
    description: 'Hoodie is my love',
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
    images: "https://cdn.shopify.com/s/files/1/0182/1471/5470/articles/Designer_Sarees_520x500_3876f942-3cda-41ca-89a2-0c637853d600.jpg?v=1639418628",
    title: 'Saree',
    price: 6500.0,
    description: 'Saree is my love',
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
    images: "https://static-01.daraz.com.np/p/8959b1192ddc23cf85751fec4c782bdf.jpg",
    title: 'Kurtha',
    price: 2250.0,
    description: 'Kurtha is my love',
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