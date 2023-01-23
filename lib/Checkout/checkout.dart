import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Constants/global_variables.dart';
import '../provider/checkoutProvider.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  double totalPrice =0.0;
  double finalTotalPrice = 0.0;

//   getFinalPrice(){
//      final checkoutListProvider = 
//             Provider.of<MyCheckoutProvider>(context, listen: false).getmyCheckoutProductsList;

//             checkoutListProvider.

//        for(int i=0 ; i< checkoutListProvider.length; i++){
//                  var checkoutProductInfo =  provider.getmyCheckoutProductsList[i];
//                  totalPrice = totalPrice + checkoutProductInfo.price;
                 
//                  finalTotalPrice = totalPrice;

                
                 
           
// // totalPrice= totalPrice + checkoutProductInfo.price;
//                 }
//   }

  @override
  Widget build(BuildContext context) {
                  double totalPrice = 0.0;
                  double finalTotalPrice = 0.0;
     final checkoutListProvider = 
            Provider.of<MyCheckoutProvider>(context, listen: false).getmyCheckoutProductsList;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          
          child: Icon(Icons.arrow_back,
          color: GlobalVariables.primarycolor,)),
      ),
      body: Container(
        
        child: Column(
           children: [
              SizedBox(height: 30,),
              RichText(text: TextSpan(
                text: 'Checkout',
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  letterSpacing: 2,
                  fontSize: 32)
              )),
               SizedBox(height: 30,),
               
               
                Consumer<MyCheckoutProvider>(
              builder: (_, provider, consumerzz) =>
  

     Expanded(
       child: ListView.builder( 
                itemCount: provider.getmyCheckoutProductsList.length,
                itemBuilder: (BuildContext context , int index) {
                 var checkoutProductInfo =  provider.getmyCheckoutProductsList[index];
                 
             
                print('this is printed total price ------$finalTotalPrice');
                 
                


                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Card(
                      
                      child: Row(
                        children: [
                          SizedBox( width: 5,),
                          Image.network(checkoutProductInfo.imagePath,
                          height: 100,
                              width: 100,),
                          Text(checkoutProductInfo.title),
                          SizedBox(width: 5,),
                          Text('Rs.'+checkoutProductInfo.price.toString(),
                          style: TextStyle(
                          color: Colors.deepOrangeAccent
                         ),),
                          SizedBox(width: 5,),
                          checkoutProductInfo.isAddedToCart ?
                          OutlinedButton.icon(
                            onPressed: (){
                              // print(total_price);
                            }, 
                            icon: Icon(Icons.mark_chat_read), 
                            label: Text('Added')
                            )
                          :
                          OutlinedButton.icon(
                          onPressed: () {
                              // checkout functionality  
                            // checkoutListProvider.addProductToCheckout(checkoutProductInfo);
                            },
                              icon: Icon(Icons.shopping_cart),
                           label: Text('done'),
                           style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.pinkAccent
                           ),
                          ), 
                        ],
                      ),
                    ),
                     SizedBox(height: 40,),
                     
                      
                  ],
                );
                
                },
                

                ),
                
                

               ),      
              
              ),
                  Consumer<MyCheckoutProvider>(
              builder: (_, provider, consumerzz) =>
  
               
               Card(
                  
                child: Container(
                  height: 50,
                  width: 200,
                  color: GlobalVariables.primarycolor,
                  child: Text('TOTAL COST:    ' + provider.totalPrice().toString(),
                  style: TextStyle(
                letterSpacing: 1,
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.bold
                           ),
              
                  )
                  ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0)),
                )),
                  OutlinedButton.icon(
                    onPressed: (){
                      Navigator.pushNamed(context, 'proceed_to_pay');
                     
                    },
                   icon: Icon(Icons.payment), 
                   label: Text('Confirm')
                   )
             
                
               
                          
                
                
                  // SizedBox(),
                          
           ]          
                
                         
  )
        ),
        
      );
    
  }
}