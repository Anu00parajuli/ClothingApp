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
    final user = FirebaseAuth.instance.currentUser!;
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

        // backgroundColor: Colors.pinkAccent,
         child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(child: 
            
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(children: [
                Text('Welcome '),
                Text(user.email! ,style: TextStyle(
                  fontSize: 12
                ),)]),
            ),
            // Text('Hi User')
            
            
           
            ),
           
            ListTile( leading: 
            Icon(Icons.settings_accessibility_rounded),
            title: Text('Faqs'),
            onTap: () async {
              // launchUrl(url_instagram);
              Navigator.pushNamed(context, 'faqs');
              
            },
    
            ),
             ListTile(leading:
             Icon(Icons.settings),
             title: Text('Settings'),
             onTap:() async {
              // launchUrl(url_facebook);
              Navigator.pushNamed(context, 'settings');
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