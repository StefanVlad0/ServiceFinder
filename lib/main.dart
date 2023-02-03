import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router/go_router.dart';
import 'package:servicefinder/TypeOfAcc.dart';
import 'package:servicefinder/login_page.dart';
import 'package:servicefinder/signin_page_user.dart';
import 'first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/', //asta e initial page
      builder: (context, state) => FirstPage(),
    ),
    GoRoute(
      path: '/firstPage',
      builder: (context, state) => FirstPage(),
    ),
    GoRoute(
      path: '/signinPageUser',
      builder: (context, state) => SignInPageUser(),
    ),
    GoRoute(
      path: '/loginPage',
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: '/typeOfAccount',
      builder: (context, state) => TypeOfAcc(),
    ),
  ],
);
