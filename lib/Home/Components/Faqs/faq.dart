import 'package:clothing_app/Constants/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';



class FAQs extends StatelessWidget {
  const FAQs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: GlobalVariables.primarycolor,
            title: Text('FAQs'),
          ) ,
          body: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ExpansionTile(
                      title: Text('What is your name?'),
                      children: [
                        Text('Anushka '),
                        ]
                                  
                      ),
                  ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ExpansionTile(
                                         title: Text('What is your hobby?'),
                                         children: [
                        Text(' Sleeping '),
                        ]
                                     
                                         ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ExpansionTile(
                                         title: Text('What is your profession?'),
                                         children: [
                        Text('Engineer'),
                        ]
                                     
                                         ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ExpansionTile(
                                         title: Text('What is the name of your workplace?'),
                                         children: [
                        Text('Nipuna Prabidhik Sewa'),
                        ]
                                     
                                         ),
                     ),
          
                ],
              ),
            ),
          ),
          ),
      
      );
  }
}