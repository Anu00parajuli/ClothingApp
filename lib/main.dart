import 'package:clothing_app/Auth/otp.dart';
import 'package:clothing_app/Auth/signup.dart';
import 'package:clothing_app/Auth/verify_user.dart';
import 'package:clothing_app/Bottom%20Navigation/bottom_navigation.dart';
import 'package:clothing_app/Home/Components/new_products.dart';
import 'package:clothing_app/Home/Components/product_descript.dart';
import 'package:clothing_app/Models/list_productsModel.dart';
import 'package:clothing_app/Profile/myprofile.dart';
import 'package:flutter/material.dart';
import 'package:clothing_app/Auth/login.dart';

import 'Home/homescreen.dart';

void main() {
  runApp(ClothingApp());
}
class ClothingApp extends StatelessWidget {
  const ClothingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: 'bottom_nav',
    //  initialRoute: 'new_products',
    // home: LoginPage(),

     routes: {
      'home' : (context) => HomePage(),
      'login' : (context) => LoginPage(),
      'signup' : (context) => SignUpPage(),
      'otp' : (context) => OTP_Verification(),
      'verified_user' : (context) => VerifiedUser(),
      'new_products' :(context) => NewProducts(),
      'profile' :(context) => MyProfile(),
      'bottom_nav':(context) => BottomNavBar(),
      // 'product_description':(context) => ProductDescription(product: demoProducts[0],),

     },

    );
  }
}
