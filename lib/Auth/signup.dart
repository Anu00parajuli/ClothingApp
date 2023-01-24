import 'dart:convert';

import 'package:clothing_app/Auth/login.dart';
import 'package:clothing_app/Models/Users/users.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneNumberController = TextEditingController();
  bool signUp = true;
 
  @override

   void dispose(){
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Center(
          child: Column(
        children: [
          Text(
            '\n\n\n SIGN UP \n',
            style: GoogleFonts.lato(
                textStyle: const TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 30,
                    letterSpacing: 2)),
          ),
          SizedBox(
            width: 325,
        
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: _formKey,
                  child: Column(children: <Widget>[
                    TextFormField(
                      controller: usernameController,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Full Name',
                      ),
                      validator: (value) {
                      if(value == null || value.isEmpty ){
                        return('Username is required');
                      }
                      else{
                      return(null);
                      }
                    }

                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                          icon: Icon(Icons.email_outlined),
                          hintText: 'Email address',
                          ),
                          // validator: (value) {
                          //   value !=null && !EmailValidator.validate(value)
                          //   ?'Enter a proper email address'
                          //   : null;
                          // },
                          validator: (value) {
                  // Check if this field is empty
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  }

                  // using regular expression
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return "Please enter a valid email address";
                  }

                  // the email is valid
                  return null;
                },
                    ),
                    // TextFormField(
                    // decoration: const InputDecoration(
                    //   icon: Icon(Icons.man_outlined),
                    //   hintText: 'Username',
                    // ),
                    // validator: (value) {
                    //   if(value == null || value.isEmpty ){
                    //     return('Username is required');
                    //   }
                    //   else{
                    //   return(null);
                    //   }
                    // }
                    // ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.password),
                        hintText: 'Password',
                      ),
                      validator: (value) {
                      if(value != null && value.length < 7){
                        return'Enter minimum 7 characters';
                      } else{
                        return null;
                      }

                    }
                    ),
                    // TextFormField(
                    //   obscureText: true,
                    //   decoration: const InputDecoration(
                    //     icon: Icon(Icons.password),
                    //     hintText: 'Retype Password',
                    // ),
                    //   validator: (value) {
                    //   if(value != null && value.length < 7){
                    //     return'Enter minimum 7 characters';
                    //   } else{
                    //     return null;
                    //   }

                    // }
                    // ),
                    TextFormField(
                      controller: phoneNumberController,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.contact_phone),
                        hintText: 'Contact No.',
                        
                      ),
                      
                      validator: (value) {
                        if (value!.length != 10){
                        return 'Mobile Number must be of 10 digit';
                        }
                        else {
                        return null;
                        }
                      },
                    ),

                    SizedBox( height: 5,),
                  //   OutlinedButton(onPressed: (){
                  //     if (_formKey.currentState!.validate()) {
                  //     Navigator.pushNamed(context, 'login');
                  //     }
                  //     else{
                  //       print('work garena');
                  //     }
                  //   },
                  //       child: Text('Continue'),
                  // ),
                    SizedBox(height: 5,),
                    Container(
                      child: Column(
                        children:[
                          
                          SizedBox(width: 0.2),
                          OutlinedButton(onPressed: () async {
                            await FirebaseAuth.instance.createUserWithEmailAndPassword(
                              email: emailController.text.trim(),
                              password: passwordController.text.trim()
                          );
                         
                         final userId = FirebaseAuth.instance.currentUser?.uid;
                         print(userId);
                         print( FirebaseAuth.instance.currentUser?.email);

                         final docUser = FirebaseFirestore.instance.collection('users');

                         final user = User(
                            username: usernameController.text,
                             user_email_address: emailController.text,
                              user_phone_number: phoneNumberController.text
                          
                            );

                         final json = user.toJson();

                            await docUser.doc(userId).set(json);


                        // Stream<List<User>> readUser() => FirebaseFirestore.instance.collection('users').snapshots().map((snapshot) =>snapshot.docs.map((doc) => User.fromJson(() => doc.data()).toList()));

                          

                            

                          // Future createUser(User user) async{
                          //   final docUser = FirebaseFirestore.instance.collection('users').doc();
                          //    var id = docUser.id;

                          //   final json = user.toJson();

                          //   await docUser.set(json);
                            



                          // }

                          // createUser(user);
                          
                          

                      if (_formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, 'login');
                      }
                    },
                    child: Text('SignUp')),
                    SizedBox(height: 10,),
                    Text('Already an user?'),
                    SizedBox(width: 5,),
                    OutlinedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, 'login');
                    }, 
                    child: Text('Login'))
                    ],


                    )

                    )


                  ],),
                )
              ),

            ),
          )

        ],
      )),
    );
  }
}

class User{

  final String id;
  final String username;
  final String user_email_address;
  final String user_phone_number;


  User({
  this.id ='',
  required this.username,
  required this.user_email_address,
  required this.user_phone_number,
  });

  Map <String , dynamic > toJson() => 
  {
    'id' : id,
    'name' : username,
    'email' : user_email_address,
    'phone_number' : user_phone_number

    
  };

  static User fromJson(Map < String , dynamic> json()) => User(
   
    username: 'name',
    user_email_address: 'email',
    user_phone_number: 'phone_number'
    );
}
