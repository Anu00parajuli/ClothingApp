import 'package:clothing_app/Auth/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class LogoutScreen extends StatefulWidget {
  const LogoutScreen({super.key});

  @override
  State<LogoutScreen> createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
      
      body:
      Center(
        child: Container(
          child: Card(
            child: Column(children: [
              SizedBox(height: 180,),
              Text('Are you sure to exit?'),
              Row(
                children: [
                  SizedBox(height: 40, width: 80,),
                  OutlinedButton(
                    
                  onPressed: () {
                    Navigator.pushNamed(context, 'home');
                  }, 
                  child: Text('Cancel')
                  ),
                  SizedBox(width: 20,),
                  OutlinedButton(
                    onPressed: () {
                     
                      FirebaseAuth.instance.signOut();
                      // Navigator.pushAndRemoveUntil(context, 'login');
                      Navigator.pushAndRemoveUntil(
    context,   
    MaterialPageRoute(builder: (BuildContext context) => LoginPage()), 
    ModalRoute.withName('/')
);
                    },
                    child: Text( 
                      'Logout',
                      style: TextStyle(color: Colors.deepOrangeAccent),)
                  ),
                ],
              )
              
            ]),
          ),
        ),
      ),
      )
    );
  }
}