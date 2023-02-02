import 'package:flutter/material.dart';
import 'package:servicefinder/login_page.dart';
import 'package:servicefinder/signin_page.dart';
import 'first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/firstPage',
      routes: {
        '/firstPage': (context) => const FirstPage(),
        '/loginPage': (context) => const LoginPage(),
        '/signinPage': (context) => const SignInPage(),
      },
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
