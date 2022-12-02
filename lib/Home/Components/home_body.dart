import 'package:clothing_app/Home/Components/branches.dart';
import 'package:clothing_app/Home/Components/brands.dart';
import 'package:clothing_app/Home/Components/new_collection.dart';
import 'package:clothing_app/Home/Components/home_header.dart';
import 'package:clothing_app/Home/Components/new_products.dart';
import 'package:clothing_app/Home/Components/popular_products.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text(user.email!),
            SizedBox(height: 30,),
            IconButton(onPressed:() {
              Navigator.pushNamed(context, 'logout');
            }, icon: Icon(Icons.logout_rounded)),
           SizedBox(height: 30,),
            Text('New Products'),
            // SizedBox(width: 20,),
            NewProducts(),
            // SizedBox(height: 20,),
            Text('Our Brands'),
            SizedBox(width: 20,),
            Brands(),
            SizedBox(height: 30,),
            Text('Our Collection'),
            SizedBox(width: 20,),
            Collection(),
            SizedBox(height: 30,),
            Text('Popular Products'),
            SizedBox(width: 20,),
            PopularProducts(),
            SizedBox(height: 30,),
            Text('Our Branches'),
            SizedBox(width: 20,),
            Branches(),
            


          ],
        ),

      ),
    
    );
  }
}