import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widget/loginForm.dart';
class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 20),
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.orange[900]!,
                Colors.orange[800]!,
                Colors.orange[400]!,

              ],
                  begin: Alignment.topCenter)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50,left: 10,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Login",style: TextStyle(fontSize: 28,color: Colors.white),),
                    SizedBox(height: 10,),
                    Text("Welcome Back!",style: TextStyle(fontSize: 20,color: Colors.white),)
                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.only(top: 30),
                decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    loginForm()
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}