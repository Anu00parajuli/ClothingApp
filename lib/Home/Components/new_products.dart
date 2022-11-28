import 'package:cached_network_image/cached_network_image.dart';
import 'package:clothing_app/Home/Components/product_descript.dart';
import 'package:clothing_app/Models/list_productsModel.dart';
import 'package:flutter/material.dart';
class NewProducts extends StatefulWidget {
  const NewProducts({super.key});

  @override
  State<NewProducts> createState() => _NewProductsState();
}

class _NewProductsState extends State<NewProducts> {

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
    isPopular: false,
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

  @override

  Widget build(BuildContext context) {
    return Container(
      height: 250,
      
      child: ListView.builder(
        itemCount: demoProducts.length,
      
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return Column(
            
            children: <Widget>[
        
              SizedBox(width: 20,),
                   
              InkWell(
                onTap: (){
                 Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) =>  ProductDescription(product: demoProducts[i],),
    ),
  );
                },
                child: Card(
                 margin: EdgeInsets.symmetric(horizontal: 8),
                  // color: Colors.blue,
                  child: Column(
                    children: [
              
                           Hero(
                            tag: [demoProducts[i].title,
                                 demoProducts[i].description,
                                 demoProducts[i].isFavourite,
                                 demoProducts[i].price
                                 ],

                             child: CachedNetworkImage(
                                                 height: 150,
                                                 width: 150,
                                                 fit: BoxFit.cover,
                                             placeholder: (context, url) =>
                                                 AspectRatio(
                                                   aspectRatio: 1,
                                                   child: Image.asset('assets/placeholder.jpg')),
                                             imageUrl:demoProducts[i].images
                                     
                                           ),
                           ),
                      
                      // Image.network(demoProducts[i].images,
                      //                height: 150,
                      //                width: 150,
                      //                fit: BoxFit.cover,
                      //   ),
                      Text(demoProducts[i].title.toString()),
                      Text(demoProducts[i].description.toString()),
                      Text(demoProducts[i].price.toString()),
              
              
                    ],
                  )
              
                    ),
              ),
              
         
              

            ],
          );
        }
      ),
    );
  }
}