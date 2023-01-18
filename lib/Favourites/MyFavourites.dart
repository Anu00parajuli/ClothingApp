import 'package:clothing_app/Home/Components/Products/product_design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../provider/cartProvider.dart';
import '../provider/favouriteProducts.dart';


class MyFavourites extends StatefulWidget {
  const MyFavourites({super.key});
 

  @override
  State<MyFavourites> createState() => _MyFavouritesState();
}

class _MyFavouritesState extends State<MyFavourites> {
  @override
  Widget build(BuildContext context) {
    String buttonText = 'Add to cart';
    
            final cartProvider = 
            Provider.of<MyCartProvider>(context, listen: false);


            
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
          children: [
            SizedBox(height: 30,),
            RichText(text: TextSpan(
              text: 'My WishList',
              style: TextStyle(
                color: Colors.deepOrangeAccent,
                letterSpacing: 2,
                fontSize: 32)
            )
            ),
             SizedBox(height: 30,),
            //  Card(
            //   child: ListView.builder( 
            //     itemCount: 5,
            //   itemBuilder: (BuildContext context , int index) {
            //   return Text('anushka');
            //   }
            //   ),
            //  )
              
              Consumer<MyFavProductsProvider>(
  builder: (_, provider, consumerzz) =>
  

     Expanded(
       child: ListView.builder( 
                itemCount: provider.getmyFavProductsList.length,
                itemBuilder: (BuildContext context , int index) {
                 var favInfo =  provider.getmyFavProductsList[index];
                return Card(
                  
                  child: Row(
                    children: [
                      SizedBox( width: 5,),
                      Image.network(favInfo.imagePath,
                      height: 100,
                          width: 100,),
                      Text(favInfo.title),
                      SizedBox(width: 5,),
                      Text(favInfo.price.toString()),
                      SizedBox(width: 5,),
                      favInfo.isAddedToCart ?
                      Text('added')
                      :
                      OutlinedButton.icon(
                     
                        onPressed: () {
                          //add to cart functionality
                            
                        cartProvider.addProductToCart(favInfo);
                       
       
                        },
                          icon: Icon(Icons.shopping_cart),
                       label: Text(buttonText),
                       style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.pinkAccent
                       ),
       
                       
                        ),
                     
       
       
                      
                    ],
                  ),
                );
                }
                ),
     ),

  
                     
              
            
              
              
              
              ),
            //  Card(
            //     child: Row(
            //       children: [
            //           SizedBox(width: 20,),
                       
            //               Image.network('https://static-01.daraz.com.np/p/3c577bee5fa6bfae9570983c7d26a282.jpg',
            //               height: 100,
            //               width: 100,),
            //              Text('T-shirt'),  
            //              SizedBox(width: 20,), 
            //               Text('2250.0'),
            //               SizedBox(width: 10,),
            //               OutlinedButton(onPressed: () { 
      
              
            //   Navigator.pushNamed(context, 'cart');
            //  },
            // child: RichText(text:TextSpan(
            //     text: 'Add to my cart',
            //   style: TextStyle( color:  Colors.deepOrangeAccent),
                
            // )) ,)
      
            //             ]                  
            //     ),
            //          ),
            //           Card(
            //     child: Row(
            //       children: [
            //           SizedBox(width: 20,),
                       
            //               Image.network('https://cdn.shopify.com/s/files/1/0182/1471/5470/articles/Designer_Sarees_520x500_3876f942-3cda-41ca-89a2-0c637853d600.jpg?v=1639418628',
            //               height: 100,
            //               width: 100,),
            //              Text('Saree'),  
            //              SizedBox(width: 20,), 
            //               Text('6500.0'),
            //               SizedBox(width: 10,),
            //               OutlinedButton(onPressed: () { 
      
              
            //   Navigator.pushNamed(context, 'cart');
            //  },
            // child: RichText(text:TextSpan(
            //     text: 'Add to my cart',
            //   style: TextStyle( color:  Colors.deepOrange),
                
            // )) ,)
      
            //             ]                  
            //     ),
            //          ),
                     
                        ]
                    ),
                ),
          );
        
    
  }
}