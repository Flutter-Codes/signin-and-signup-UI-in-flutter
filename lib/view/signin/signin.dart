import 'package:flutter/material.dart';
import 'package:login_logout_screen/view/signup/signup.dart';

import 'package:login_logout_screen/widgets/build_text.dart';

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Image.asset(
                  'img/ice-cream.png',
                  height: 100,
                  width: 100,
                ),
                BuildText(
                  text: 'Welcome Back',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff003CC0),
                ),
                BuildText(
                  text: 'Sign to continue',
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff003CC0),
                ),
                SizedBox(height: 50),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.blue[300],
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'user123@gmail.com',
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            labelText: 'Email'),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.blue[300],
                            ),
                            border: OutlineInputBorder(),
                            hintText: '********',
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            labelText: 'Password'),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: BuildText(
                      text: 'Forgot Password?',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                MaterialButton(
                  height: 50,
                  minWidth: 300,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  color: Color(0xff003CC0),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                  },
                  child: BuildText(
                    text: 'LOGIN',
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BuildText(
                      text: "Don't have account?",
                    ),
                    SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: BuildText(
                        text: 'create a new account',
                        color: Color(0xff003CC0),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
