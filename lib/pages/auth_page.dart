import 'package:biom/pages/home_page.dart';
import 'package:biom/services/auth_service.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("AuthPage"),
      ),
      body: Center(
        child: IconButton(onPressed: ()async{
          bool check=await AuthService().authenticateLocally();
          if(check){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage(),));
          }
        }, icon: Icon(Icons.fingerprint,size: 70,)),

      ),
    );
  }
}
