import 'package:clothing_app/Auth/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Utils utils = Utils();

  @override
 void dispose(){
    emailController.dispose();
   

    super.dispose();
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Center(
            child: Column(children: [
              Text('\n\n\nForgot Password\n\n',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 28,
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
                      child: Column(
                        children: [
                          RichText(text: TextSpan(
                            style: TextStyle(color: Colors.blue),
                            text: 'Please mention your email address',
                            
                          )),
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
                        SizedBox(),
                        OutlinedButton(onPressed: () async {
                           await FirebaseAuth.instance.sendPasswordResetEmail(
                           email: emailController.text.trim()

                          );
                          utils.showSnackBar('email sent');

                      if (_formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, 'login');
                      }
                    },
                    child: Text('Reset Password'))
                        ],
                      )),
                  ),

                    ),
                  )
            ]
            )
      )
    );
  }
}