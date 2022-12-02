
import 'package:cached_network_image/cached_network_image.dart';
import 'package:clothing_app/Cart/ProceedPay.dart';
import 'package:clothing_app/Constants/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:clothing_app/Models/list_productsModel.dart';
class MyCart extends StatefulWidget {
  const MyCart({super.key, required this.product});
  final Products product;

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
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
               Card(
                  child: Row(
                    children: [
                        SizedBox(width: 20,),
                        
                        Checkbox(value: isChecked ,
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                       if (states.contains(MaterialState.disabled)) {
                        return Colors.orange.withOpacity(.32);
                       }
                       return Colors.orange;
                       }),
                        onChanged: (bool? value) {
                           setState(() {
                              isChecked = value!;
                                  });
                              },
                        ),
                        SizedBox(width: 20,),
                         Hero(
                          tag: widget.product.title,
                         child: CachedNetworkImage(
                            height: 75,
                            width: 75,
                            fit: BoxFit.cover,
                                         placeholder: (context, url) =>
                            AspectRatio(
                              aspectRatio: 1,
                              child: Image.asset('assets/placeholder.jpg')),
                                         imageUrl:widget.product.images
                                         
                                       ),
                       ),
                       SizedBox(width: 40,),
                        Column(
                          children :[
                        Text(widget.product.title),
                         
                       
                          ]
                        ),
                         SizedBox(width: 40,),
                        Column(
                          children :[
                       
                         
                         Text(widget.product.price.toString()),
                          ]
                        ),
                        
                      
                      ],
                    ),
                ),
                
              ElevatedButton(onPressed: () { 

                
                Navigator.pushNamed(context, 'proceed_to_pay');
               },
              child: RichText(text:TextSpan(
                  text: 'Proceed to Pay',
                style: TextStyle( color:  Colors.deepOrange),
                  
              )) ,)
              
    

            
               
            ],
          ),
        ),
      ),
      );
      
  }
}