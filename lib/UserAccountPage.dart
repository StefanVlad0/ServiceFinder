import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:servicefinder/responsive.dart';

class UserAccounPage extends StatefulWidget {
  const UserAccounPage({super.key});

  @override
  State<UserAccounPage> createState() => _UserAccounPageState();
}

class _UserAccounPageState extends State<UserAccounPage> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: Container(
          color: Colors.black,
        ),
        tablet: Container(color: Colors.red),
        desktop: Scaffold(
          backgroundColor: const Color(0xFF000534),
          appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color(0xFF000534),
              actions: [
                Row(
                  children: [
                    InkWell(
                        child: Text('Login'),
                        onTap: (() => context.go('/loginPage'))),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                        child: Text('Sign In'),
                        onTap: (() => context.go('/typeOfAccount'))),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ]),
          body: Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ));
  }
}
