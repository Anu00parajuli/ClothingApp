import 'package:clothing_app/Auth/forgot_password.dart';
import 'package:clothing_app/Auth/otp.dart';
import 'package:clothing_app/Auth/signup.dart';
import 'package:clothing_app/Auth/utils.dart';
import 'package:clothing_app/Auth/verify_user.dart';
import 'package:clothing_app/Bottom%20Navigation/bottom_navigation.dart';
import 'package:clothing_app/Cart/MyCart.dart';
import 'package:clothing_app/Cart/ProceedPay.dart';
import 'package:clothing_app/Checkout/checkout.dart';
import 'package:clothing_app/Home/Components/Faqs/faq.dart';
import 'package:clothing_app/Home/Components/Products/new_products.dart';

import 'package:clothing_app/Home/Components/Settings/settings.dart';
import 'package:clothing_app/Logout/logout.dart';

import 'package:clothing_app/Profile/myprofile.dart';
import 'package:clothing_app/Splash%20Screen/splash_screen.dart';
import 'package:clothing_app/provider/cartProvider.dart';
import 'package:clothing_app/provider/checkoutProvider.dart';
import 'package:clothing_app/provider/favouriteProducts.dart';
import 'package:flutter/material.dart';
import 'package:clothing_app/Auth/login.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';


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
    return MultiProvider(
    providers: [
   ChangeNotifierProvider<MyFavProductsProvider>(create: (context) => MyFavProductsProvider()),
   ChangeNotifierProvider<MyCartProvider>(create: (context) => MyCartProvider()),
   ChangeNotifierProvider<MyCheckoutProvider>(create: (context)=> MyCheckoutProvider())
    ],
    child: MaterialApp(
      
     scaffoldMessengerKey: utils.messengerKey,
     debugShowCheckedModeBanner: false,
     initialRoute: 'splash_screen',
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
      'settings':(context)=>UserSettings(),
      'faqs':(context) => FAQs(),
      'cart' :(context) => MyCart(),
      'splash_screen' :(context) => SplashScreen(key: key),
      'check_out':(context) => Checkout()
      

      // 'product_description':(context) => ProductDescription(product: demoProducts[0],),

     },
    ),
   );
  
}
}