// import 'dart:html';





import 'dart:io';

import 'package:clothing_app/Constants/global_variables.dart';
import 'package:clothing_app/Profile/Components/ProfileBody.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:image_picker/image_picker.dart';




class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

  String imageUrl = " ";

  // File? _imageFile;
// Future pickImage() async {
//     try {
//       final image = await ImagePicker().pickImage(source: ImageSource.gallery);
// if(image == null) return;
// final imageTemp = File(await Fluttera);
// setState(() => this.image = imageTemp);
//     } on PlatformException catch(e) {
//       print('Failed to pick image: $e');
//     }
//   }

ImagePicker picker = ImagePicker();
  XFile? image;

  
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
       child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white
        ),
        body: Container(
         
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child : Column(
            children: [
              SizedBox(height: 40,),
              Stack(
              children: [
                
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
         
          children: [
            
            Positioned(
                  top: 35,
                  left: 130,
            child: ProfilePicture(
                  
                   name: 'Anushka Parajuli',
                   role: 'Customer',
                   fontsize: 21,
                   radius: 61,
                   
                   
            //  img: 'https://media-exp1.licdn.com/dms/image/C4D03AQFgUo973GGSSw/profile-displayphoto-shrink_800_800/0/1629770880479?e=1674691200&v=beta&t=Ib8-gT2GzLY2Cu9S1amFy3pWCQCMKMNJB1LUywfSQuw',
                img: imageUrl
             ),
            ),
            
          ],
        ),
                
         Positioned(
         left: 195,
              top: 85,
              child: IconButton(icon: Icon(Icons.add_a_photo_rounded), 
              onPressed: ()  
              
              async { 
                image = await picker.pickImage(source: ImageSource.gallery); 
                        

                   // pickImage();
                Reference ref = FirebaseStorage.instance.ref().child('profilepic.jpg');

                await ref.putFile(File(image!.path));
                // print(image!.path);
               
                ref.getDownloadURL().then((value) {
                  print(value);

                  setState(() {
                          //update UI
                          // image = File(image.path);
                          imageUrl = value;
                        });
                                            

                });
                

               
              }
                )
                
              ),
       
                
              
        
         
    ], 


        ),
        Column(
    
            children: [
              SizedBox(height: 60,),
             Text('Anushka Parajuli',
             style: TextStyle(
              letterSpacing: 1,
              fontSize: 18
             ),
             
             ),
             SizedBox(height: 40,),
             Row(
              children: [
             SizedBox(width: 30,),   
            Icon(Icons.email_outlined),
             SizedBox(width: 10,),
             Text('parajulianushka1213@gmail.com',
             style: TextStyle(
              letterSpacing: 1,
              fontSize: 12
             ),
             ),
              ]
             ),
             Row(
              children: [
             SizedBox(width: 30, height: 40,),   
            Icon(Icons.phone_android_rounded),
             SizedBox(width: 10,),
             Text('+977 9863448313',
             style: TextStyle(
              letterSpacing: 1,
              fontSize: 12
             ),
             ),
              ]
             ),
             Row(
              children: [
             SizedBox(width: 30, height: 40,),   
            Icon(Icons.location_city_outlined),
             SizedBox(width: 10,),
             Text('Chipledhunga, Pokhara',
             style: TextStyle(
              letterSpacing: 1,
              fontSize: 12
             ),
             ),
              ]
             ),
             SizedBox(height: 40,),
             Card(
                elevation: 4,
              child: Container(
                height: 100,
                width: 400,
                color: GlobalVariables.primarycolor,
                child: Text('     MY PAYMENTS',
                style: TextStyle(
              letterSpacing: 1,
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.bold
             ),

                )
                ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0)),
             )
            ],
          )
            ],
          )

        
        )
        
       )
       );
    
  }
}