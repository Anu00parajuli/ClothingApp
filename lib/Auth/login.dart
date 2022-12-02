import 'dart:math';

import 'package:clothing_app/Auth/utils.dart';
import 'package:clothing_app/Home/homescreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  Utils utils = Utils();
  @override

  void dispose(){
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }
  Widget build(BuildContext context) {
    // return StreamBuilder<User?>(
    //   stream: FirebaseAuth.instance.authStateChanges(),
    //   builder: (context, snapshot) {
    //     if (snapshot.hasData){
    //       return HomePage();
    //     }
    //     else{
    //       return LoginPage();
    //     }
        return Scaffold(
          resizeToAvoidBottomInset : false,
          body: Center(
            child: Column(children: [
              Text('\n\n\nLOGIN\n\n',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 30,
                      letterSpacing: 2,
                    ),
                  ) //GoogleFonts
                  ),
              SizedBox(
                width: 325,
               child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.white70,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: _formKey,
                        child: Column(children: <Widget>[
                      TextFormField(
                        controller: emailController,
    
                          decoration: const InputDecoration(
                              icon: Icon(Icons.email_outlined),
                              hintText: 'Email address',
                              ),
                            
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
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          icon: const Icon(Icons.lock),
                          hintText: 'Password Please',
                          labelText: 'Password',
                          ),
                        validator: (value) {
                          if(value != null && value.length < 7){
                            return'Enter minimum 7 characters';
                          } else{
                            return null;
                          }
    
                        }
                      ),
                      SizedBox(height: 20),
                      OutlinedButton(
                        onPressed: () async {
                          try{
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: emailController.text.trim(),
                          password: passwordController.text.trim()
                          );
                          }
                          
                          on FirebaseAuthException catch(e) {
                            print(e);
                            // Utils.showSnackBar(e.message);
                            utils.showSnackBar('Try with new email address');
                          
                          }
                        
    
                        
                        
    
                         if (_formKey.currentState!.validate()) {
                            Navigator.pushNamed(context, 'bottom_nav');
                          }
                          else{
                            print('work garena');
                          }
                      },
                        child: Text('Login'),
                        style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.orangeAccent, backgroundColor: Colors.white),
                      ),
                      SizedBox(height: 30, width: 10,),
                      RichText(
                        text: TextSpan(style: TextStyle(color: Colors.orangeAccent),
                        text: 'Forgot Password?',
                        recognizer: TapGestureRecognizer()
                        ..onTap =() {
                          Navigator.pushNamed(context, 'forgot_password');
                        }
                        ),
                        ),
                    ])),
                  ),
                ),
              ),
            ]),
          ),
        );
      }
    // );
  }
  

// }