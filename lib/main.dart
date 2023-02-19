import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:servicefinder/Pages/service/ServiceAccountPage.dart';
import 'package:servicefinder/Pages/TypeOfAcc.dart';
import 'package:servicefinder/Pages/customer/UserAccountPage.dart';
import 'package:servicefinder/Pages/login_page.dart';
import 'package:servicefinder/Pages/service/signin_page_service.dart';
import 'package:servicefinder/Pages/customer/signin_page_user.dart';
import 'Pages/first_page.dart';

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
      path: '/',
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
    GoRoute(
      path: '/signinPageService',
      builder: (context, state) => SignInPageService(),
    ),
    GoRoute(
      path: '/userAccount', //asta e initial page
      builder: (context, state) => UserAccounPage(),
    ),
    GoRoute(
      path: '/serviceAccount', //asta e initial page
      builder: (context, state) => ServiceAccountPage(),
    ),
  ],
);
