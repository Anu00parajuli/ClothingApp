import 'package:clothing_app/Cart/MyCart.dart';
import 'package:clothing_app/Constants/global_variables.dart';
import 'package:clothing_app/Favourites/MyFavourites.dart';
import 'package:clothing_app/Home/homescreen.dart';
import 'package:clothing_app/Profile/MyProfile.dart';

import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var _currentIndex = 0;

List<Widget> pages = [
    HomePage(),
    MyFavourites(),
    MyCart(),
    MyProfile(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
           /// Home
              SalomonBottomBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
                selectedColor: Colors.pink,
              ),
    
              /// Likes
              SalomonBottomBarItem(
                icon: Icon(Icons.favorite_border),
                title: Text("Likes"),
                selectedColor: Colors.pink,
              ),
    
              /// Search
              SalomonBottomBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text("Cart"),
                selectedColor: Colors.pink,
              ),
    
              /// Profile
              SalomonBottomBarItem(
                icon: Icon(Icons.person),
                title: Text("Profile"),
                selectedColor: Colors.pink,
            
              ),
          
        ],
        
      ),
    );
  }
}