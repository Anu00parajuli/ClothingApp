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
    
    
  final cartProvider = 
            Provider.of<MyCartProvider>(context, listen: false);
  
  final favouriteProvider = Provider.of<MyFavProductsProvider>(context,listen: false);


            
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
              builder: (_, provider, ch) =>
  

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
                      
                      Text(favInfo.title,),
                      SizedBox(width: 5,),
                      Text('Rs.'+favInfo.price.toString(),
                      style: TextStyle(
                          color: Colors.deepOrangeAccent
                         ),),
                      SizedBox(width: 5,),
                      Column(
                        children: [
                      favInfo.isAddedToCart ?
                      OutlinedButton.icon(
                        onPressed: (){}, 
                        icon: Icon(Icons.mark_chat_read), 
                        label: Text('Added'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.orange
                        )
                        )
                      :
                      OutlinedButton.icon(
                     
                        onPressed: () {
                          //add to cart functionality
                            
                        cartProvider.addProductToCart(favInfo);
                       
       
                        },
                          icon: Icon(Icons.shopping_cart),
                       label: Text('AddToCart'),
                       style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.pinkAccent
                       ),
                        ),
                      OutlinedButton.icon(onPressed: (){
                        //remove from the favourites list
                        print('remove huncha');
                        favouriteProvider.removeProduct(favInfo);
                      }, 
                      icon: Icon(Icons.remove_circle_outline_outlined), 
                      label: Text('Remove')
                      )
                        ]
                      )
       
       
                      
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