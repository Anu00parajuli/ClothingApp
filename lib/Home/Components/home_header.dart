import 'package:flutter/material.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
  

      child: Row(
       children:[
        SizedBox(height: 10,),
      //   Drawer(
      //     child: ListView(
      //   padding: EdgeInsets.zero,
      //   children: [
      //     const DrawerHeader(child: Text('Hi User')),
      //     ListTile(leading:
      //      Icon(Icons.settings),
      //      title: Text('Settings'),
      //      onTap:() async {
      //       // launchUrl(url_facebook);
      //      } ,
          

      //     ),
      //     ListTile( leading: 
      //     Icon(Icons.settings_accessibility_rounded),
      //     title: Text('Accessibility'),
      //     onTap: () async {
      //       // launchUrl(url_instagram);
      //     },

      //     ),
      //     ListTile(
      //       leading:
      //       Icon(Icons.branding_watermark_sharp),
      //       title: Text('Brands'),
      //       onTap: () async {
      //         // launchUrl(url_snapchat);
      //       },
      //     ),
      // ],
      //   ),
      //   ),
        
        // Icon(Icons.search)
        
       ],
      )
    );
  }
}