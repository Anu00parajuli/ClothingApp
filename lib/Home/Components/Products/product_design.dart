
import 'package:cached_network_image/cached_network_image.dart';
import 'package:clothing_app/Home/Components/Products/new_products.dart';
import 'package:clothing_app/Home/Components/Products/product_descript.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../../../Models/list_productsModel.dart';
import 'new_products.dart';

class ProductDesign extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final List rating;
  final bool isFavourite;
  final List sizes;
  final List colors;
  final int price;
  final String brandName;
   bool isAddedToCart= false;
   bool isSelectedToCheckout = false;

   ProductDesign({super.key, required this.title, required this.description, required this.imagePath, required this.rating, required this.isFavourite, required this.sizes, required this.colors, required this.price, required this.brandName, required this.isAddedToCart , required this.isSelectedToCheckout});
  //  var newProduct =  ProductDesign(title: title, description: description, imagePath: imagePath, rating: rating, isFavourite: isFavourite, sizes: sizes, colors: colors, price: price,);

  @override
  Widget build(BuildContext context) {
    return Container(
     
          child: Column(
            
            children: <Widget>[
        
              SizedBox(width: 20,),
                   
              InkWell(
                onTap: (){
                 Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) =>  ProductDescription(product: ProductDesign(title: title, description: description, imagePath: imagePath, rating: rating, isFavourite: isFavourite, sizes: sizes, colors: colors, price: price, brandName: brandName, isAddedToCart: isAddedToCart,  isSelectedToCheckout: isSelectedToCheckout,), ),
    ),
  );
                },
                child: Card(
                  
                 margin: EdgeInsets.symmetric(horizontal: 8),
                  // color: Colors.blue,
                  child: Column(
                    children: [
                         Image.network(imagePath,
                         height: 150,
                         width: 150,),
                         Text(title.toString()),
                        //  Text(description.toString()),
                         Text('Rs. '+price.toString(),
                         style: TextStyle(
                          color: Colors.deepOrangeAccent
                         ),),
                         
                         
                          //  Hero(
                          //   tag: [demoProducts[1].title,
                          //        demoProducts[1].description,
                          //        demoProducts[1].isFavourite,
                          //        demoProducts[1].price
                          //        ],

                            //  child: CachedNetworkImage(
                            //                      height: 150,
                            //                      width: 150,
                            //                      fit: BoxFit.cover,
                            //                  placeholder: (context, url) =>
                            //                      AspectRatio(
                            //                        aspectRatio: 1,
                            //                        child: Image.asset('assets/placeholder.jpg')),
                            //                  imageUrl:demoProducts[1].images
                                     
                            //                ),
                          //  ),
                     
                      // Text(demoProducts[1].title.toString()),
                      // Text(demoProducts[1].description.toString()),
                      // Text(demoProducts[1].price.toString()),
                      
                      // Text(product.title.toString())
              
    //                     db.collection("products").get().then(
    //   (res) => print("Successfully completed"),
    //   onError: (e) => print("Error completing: $e"),
    // );
                    ],
                   
                  )
              
                    ),
              ),
              
         
              

            ],
          )
          );
        }
    
    
  }
