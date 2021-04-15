import 'package:flutter/material.dart';
import 'package:login_logout_screen/view/signin/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login / Logout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme:
            AppBarTheme(backgroundColor: Color(0xfffafbfb), elevation: 0),
      ),
      home: Signin(),
    );
  }
}
