import 'package:clothing_app/Auth/forgot_password.dart';
import 'package:clothing_app/Auth/otp.dart';
import 'package:clothing_app/Auth/signup.dart';
import 'package:clothing_app/Auth/utils.dart';
import 'package:clothing_app/Auth/verify_user.dart';
import 'package:clothing_app/Bottom%20Navigation/bottom_navigation.dart';
import 'package:clothing_app/Cart/MyCart.dart';
import 'package:clothing_app/Cart/ProceedPay.dart';
import 'package:clothing_app/Home/Components/new_products.dart';
import 'package:clothing_app/Home/Components/product_descript.dart';
import 'package:clothing_app/Logout/logout.dart';
import 'package:clothing_app/Models/list_productsModel.dart';
import 'package:clothing_app/Profile/myprofile.dart';
import 'package:flutter/material.dart';
import 'package:clothing_app/Auth/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


import 'Home/homescreen.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(ClothingApp());
}
class ClothingApp extends StatelessWidget {
  Utils utils = Utils();
  ClothingApp({Key? key}) : super(key: key);

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      
     scaffoldMessengerKey: utils.messengerKey,
     debugShowCheckedModeBanner: false,
     initialRoute: 'login',
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
      'logout':(context) => LogoutScreen(),
      'forgot_password':(context) => ForgotPassword(),
      'proceed_to_pay':(context ) => ProceedPayment(),
      'cart' :(context) => MyCart(product: demoProducts[0])
      

      // 'product_description':(context) => ProductDescription(product: demoProducts[0],),

     },

    );
  }
}
