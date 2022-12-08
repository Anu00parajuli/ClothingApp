import 'package:clothing_app/Bottom%20Navigation/bottom_navigation.dart';
import 'package:clothing_app/Constants/global_variables.dart';
import 'package:clothing_app/Home/Components/HomeScreen/home_body.dart';
import 'package:firebase_auth/firebase_auth.dart';
import'package:flutter/material.dart';

import '../Search/search_delegate.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        foregroundColor: GlobalVariables.primarycolor,
        backgroundColor: Colors.white,
        actions: [
   
    
        // Icon(Icons.search,)
        IconButton(
      icon: Icon(Icons.search),
      onPressed: () {
        showSearch(
          context: context,
          delegate: MySearchDelegate(),
        );
      },
    ),
        ],
      ),
      drawer: Drawer(
        // backgroundColor: Colors.white,
         child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(child: Text('Hi User')),
           
            ListTile( leading: 
            Icon(Icons.settings_accessibility_rounded),
            title: Text('Accessibility'),
            onTap: () async {
              // launchUrl(url_instagram);
            },
    
            ),
             ListTile(leading:
             Icon(Icons.settings),
             title: Text('Settings'),
             onTap:() async {
              // launchUrl(url_facebook);
             } ,
            
    
            ),
            ListTile(
              leading:
              Icon(Icons.branding_watermark_sharp),
              title: Text('Logout'),
              onTap: () async {
                Navigator.pushNamed(context, 'logout');
              },
            ),
        ],
          ),
      ),
       body: HomeBody(),
      ),
    );

  }
}