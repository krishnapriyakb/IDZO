import 'package:flutter/material.dart';
import 'package:idzo/views/loginPage.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: Image(
              image: AssetImage("assets/cart.png"),
            ),
          ),
          Text(
            "IDZO",
            style: TextStyle(
                fontSize: 50,
                color: Colors.orange,
                decoration: TextDecoration.none),
          ),
          Text(
            "Effortless Purchase,Exclusive Products",
            style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                decoration: TextDecoration.none),
          ),
        ],
      ),
    );
  }
}
