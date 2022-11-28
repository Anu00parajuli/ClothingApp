import 'dart:math';

import 'package:clothing_app/Home/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
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
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Username please',
                      labelText: 'Username',
                    ),
                    validator: (value) {
                      if(value == null || value.isEmpty ){
                        return('Username is required');
                      }
                      else{
                      return(null);
                      }
                    },
                  ),
                  TextFormField(
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
                    onPressed: () {
                    

                     if (_formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, 'home');
                      }
                      else{
                        print('work garena');
                      }
                  },
                    child: Text('Login'),
                    style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.orangeAccent, backgroundColor: Colors.white),
                  )
                ])),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}