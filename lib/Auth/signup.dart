import 'package:clothing_app/Auth/login.dart';
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
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
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
                    // TextFormField(
                    //   decoration: const InputDecoration(
                    //     icon: Icon(Icons.person),
                    //     hintText: 'Full Name',
                    //   ),
                    //   validator: (value) {
                    //   if(value == null || value.isEmpty ){
                    //     return('Username is required');
                    //   }
                    //   else{
                    //   return(null);
                    //   }
                    // }

                    // ),
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
                    // TextFormField(
                    //   keyboardType: TextInputType.phone,
                    //   decoration: const InputDecoration(
                    //     icon: Icon(Icons.contact_phone),
                    //     hintText: 'Contact No.',
                        
                    //   ),
                      
                    //   validator: (value) {
                    //     if (value!.length != 10){
                    //     return 'Mobile Number must be of 10 digit';
                    //     }
                    //     else {
                    //     return null;
                    //     }
                    //   },
                    // ),

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
                          Text('Already an user?'),
                          SizedBox(width: 0.2),
                          OutlinedButton(onPressed: () async {
                            await FirebaseAuth.instance.createUserWithEmailAndPassword(
                              email: emailController.text.trim(),
                              password: passwordController.text.trim()
                          );
                          
                          

                      if (_formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, 'login');
                      }
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