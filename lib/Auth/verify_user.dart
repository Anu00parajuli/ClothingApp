import 'package:clothing_app/Auth/login.dart';
import 'package:flutter/material.dart';

class VerifiedUser extends StatefulWidget {
  const VerifiedUser({super.key});

  @override
  State<VerifiedUser> createState() => _VerifiedUserState();
}

class _VerifiedUserState extends State<VerifiedUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center( 
      
        child: Column(
          children: [ 
            SizedBox(height: 400,),
            Text('Congratulations!! You have been our verified user',),
            SizedBox(width: 10,),
            Icon(Icons.verified_user),
            SizedBox(width: 10,),
            OutlinedButton(onPressed:() => {
              Navigator.pushNamed(context, 'login')
            } , child: Text('Login', style: TextStyle(color: Colors.white,),)
            , 
            // style:  ButtonStyle(backgroundColor: ),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.purple),
            )

          ],
        ),
      ),
      );
  
  }
}