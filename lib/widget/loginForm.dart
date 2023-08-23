import 'package:flutter/material.dart';

import '../views/homePage.dart';

class loginForm extends StatefulWidget {
  @override
  State<loginForm> createState() => _loginFormState();
}

class _loginFormState extends State<loginForm> {
  var formkey = GlobalKey<FormState>();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(233, 180, 151, 0.988),
                      blurRadius: 20,
                      offset: Offset(0, 10))
                ]),
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  TextFormField(
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Username",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    textInputAction: TextInputAction.next,
                    validator: (uname) {
                      if (uname!.isEmpty || !uname.contains('@')) {
                        return 'Enter a valid UserName';
                      } else {
                        return null;
                      }
                    },
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: 18),
                    textInputAction: TextInputAction.done,
                    obscureText: showpass,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: IconButton(
                        color: Colors.grey,
                        onPressed: () {
                          setState(() {
                            if (showpass) {
                              showpass = false;
                            } else {
                              showpass = true;
                            }
                          });
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                    ),
                    validator: (password) {
                      if (password!.isEmpty || password.length < 6) {
                        return 'Enter a valid password , length  should be greater than 6';
                      } else {
                        return null;
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          width: 250,
          height: 50,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange[900],
            ),
            onPressed: () {
              final valid = formkey.currentState!.validate();
              if (valid) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              } else {
                return null;
              }
            },
            child: const Text(
              "Login",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 1,
              width: 100,
              color: Colors.grey,
            ),
            Text(
              "or Continue with Gooogle",
              style: TextStyle(fontSize: 16),
            ),
            Container(
              height: 1,
              width: 100,
              color: Colors.grey,
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 250,
          height: 50,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage("assets/google.png"),height: 20,),
                Text(
                  "Login with Google",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an Account?"),
            TextButton(
              onPressed: () {},
              child: Text("Sign Up"),
            )
          ],
        )
      ],
    );
  }
}
