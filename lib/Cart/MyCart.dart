
import 'package:cached_network_image/cached_network_image.dart';
import 'package:clothing_app/Cart/ProceedPay.dart';
import 'package:clothing_app/Constants/global_variables.dart';
import 'package:clothing_app/provider/checkoutProvider.dart';
import 'package:flutter/material.dart';
import 'package:clothing_app/Models/list_productsModel.dart';
import 'package:provider/provider.dart';

import '../provider/cartProvider.dart';
class MyCart extends StatefulWidget {
  const MyCart({super.key,});
  // final Products product;

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final cartListProvider = 
            Provider.of<MyCartProvider>(context, listen: false).getmyCartProductsList;
     final checkoutProvider = 
            Provider.of<MyCheckoutProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
            children: [
              SizedBox(height: 30,),
              RichText(text: TextSpan(
                text: 'My Cart',
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  letterSpacing: 2,
                  fontSize: 32)
              )),
               SizedBox(height: 30,),
               
               Consumer<MyCartProvider>(
                 builder: (_, provider, consumerCart) =>
                 Expanded(
                  child: ListView.builder( 
                  itemCount: provider.getmyCartProductsList.length,
                  itemBuilder: (BuildContext context , int index) {
                 var cartInfo = provider.getmyCartProductsList[index];
                  return Card(
                    
                    child: Row(
                      children: [
                        SizedBox( width: 5,),
                        Image.network(cartInfo.imagePath,
                        height: 100,
                            width: 100,),
                        Text(cartInfo.title),
                        SizedBox(width: 5,),
                        Text(cartInfo.price.toString()),
                        SizedBox(width: 5,),
                        cartInfo.isSelectedToCart ?
                        Text('Selected'):
                        OutlinedButton.icon(
                          icon: Icon(Icons.shopping_cart),
                         label: Text('Select'),
                         style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.pinkAccent
                         ),
                          onPressed: () { 
                            //subtotaling functionality
                            checkoutProvider.addProductToCheckout(cartInfo);
                           },
               
                         
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
                        
              //           Checkbox(value: isChecked ,
              //           checkColor: Colors.white,
              //           fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
              //          if (states.contains(MaterialState.disabled)) {
              //           return Colors.orange.withOpacity(.32);
              //          }
              //          return Colors.orange;
              //          }),
              //           onChanged: (bool? value) {
              //              setState(() {
              //                 isChecked = value!;
              //                     });
              //                 },
              //           ),
              //           SizedBox(width: 20,),
              //            Hero(
              //             tag: widget.product.title,
              //            child: CachedNetworkImage(
              //               height: 75,
              //               width: 75,
              //               fit: BoxFit.cover,
              //                            placeholder: (context, url) =>
              //               AspectRatio(
              //                 aspectRatio: 1,
              //                 child: Image.asset('assets/placeholder.jpg')),
              //                            imageUrl:widget.product.images
                                         
              //                          ),
              //          ),
              //          SizedBox(width: 40,),
              //           Column(
              //             children :[
              //           Text(widget.product.title),
                         
                       
              //             ]
              //           ),
              //            SizedBox(width: 40,),
              //           Column(
              //             children :[
                       
                         
              //            Text(widget.product.price.toString()),
              //             ]
              //           ),
                        
                      
              //         ],
              //       ),
              //   ),
                
              ElevatedButton.icon(onPressed: () { 

                
                Navigator.pushNamed(context, 'check_out');
                
               },
                
              icon: Icon(Icons.payment),
              label: Text('Checkout'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.deepOrangeAccent
              ),
              
                  ) ,
              
    

            
               
            ],
          ),
        ),
      ),
      );
      
  }
}