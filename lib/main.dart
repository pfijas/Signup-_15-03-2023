import 'package:flutter/material.dart';
import 'package:restuarant/splash/loginpage.dart';
import 'package:restuarant/splash/signup.dart';
import 'package:restuarant/splash/splash_1.dart';

main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: LoginDemo(),
/*        home: SafeArea(
          child: Scaffold(
            body: SecondPage()
          ),
        )*/
    );
  }
}
