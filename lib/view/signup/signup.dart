import 'package:flutter/material.dart';
import 'package:login_logout_screen/view/signin/signin.dart';
import 'package:login_logout_screen/widgets/build_text.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color(0xff003CC0)),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 5, left: 30, right: 30, bottom: 30),
            child: Column(
              children: [
                BuildText(
                  text: 'Create Account',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff003CC0),
                ),
                BuildText(
                  text: 'Create a new account',
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff003CC0),
                ),
                SizedBox(height: 40),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person_outline,
                              color: Colors.blue[300],
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'user123@gmail.com',
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            labelText: 'NAME'),
                      ),
                      SizedBox(height: 20),
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
                            labelText: 'EMAIL'),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.phone_iphone,
                              color: Colors.blue[300],
                            ),
                            border: OutlineInputBorder(),
                            hintText: '+91 9876543210',
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            labelText: 'PHONE'),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.blue[300],
                            ),
                            border: OutlineInputBorder(),
                            hintText: '**********',
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            labelText: 'PASSWORD'),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.blue[300],
                            ),
                            border: OutlineInputBorder(),
                            hintText: '**********',
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            labelText: 'CONFIRM PASSWORD'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                MaterialButton(
                  height: 50,
                  minWidth: 300,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  color: Color(0xff003CC0),
                  onPressed: () {},
                  child: BuildText(
                    text: 'CREATE ACCOUNT',
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
                      text: "Already have a account?",
                    ),
                    SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signin()));
                      },
                      child: BuildText(
                        text: 'Login',
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
