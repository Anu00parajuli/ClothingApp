import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
               Text('Rs: ')
           ]
        ),
      ),
    );
  }
}