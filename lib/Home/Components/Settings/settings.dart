import 'package:flutter/material.dart';

import '../../../Constants/global_variables.dart';

class UserSettings extends StatelessWidget {
  const UserSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: GlobalVariables.primarycolor,
          backgroundColor: Colors.white,
          title: Text('Settings'),
          
        //   actions: [
        //     IconButton(
        //       alignment: Alignment.center,
        //     icon:  Icon(Icons.arrow_back),
        //    onPressed: () {
        //     Navigator.pop(context);
        //   },
      
        // ),
        // Text('Settings')
        //   ],

        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(child: Text('About phone', style: TextStyle(
                    fontSize: 16
                  ),)),
                  
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(child: Text('About Anushka', style: TextStyle(
                    fontSize: 16
                  ),)),
                  
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(child: Text('System apps updater', style: TextStyle(
                    fontSize: 16
                  ),)),
                  
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(child: Text('Security status', style: TextStyle(
                    fontSize: 16
                  ),)),
                  
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(child: Text('SIM cards & mobile networks', style: TextStyle(
                    fontSize: 16
                  ),)),
                  
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(child: Text('Wi-Fi', style: TextStyle(
                    fontSize: 16
                  ),)),
                  
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(child: Text('Bluetooth', style: TextStyle(
                    fontSize: 16
                  ),)),
                  
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(child: Text('Portable hotspot', style: TextStyle(
                    fontSize: 16
                  ),)),
                  
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(child: Text('Connection & sharing', style: TextStyle(
                    fontSize: 16
                  ),)),
                  
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(child: Text('Lock screen', style: TextStyle(
                    fontSize: 16
                  ),)),
                  
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(child: Text('Display', style: TextStyle(
                    fontSize: 16
                  ),)),
                  
                ),
                Divider(),
               

              ],
            ),
          ),
        ),
      )
      );
  }
}