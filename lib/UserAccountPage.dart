import 'dart:ui';

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
        mobile: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Color.fromARGB(255, 240, 142, 142),
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              elevation: 0,
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          //width: MediaQuery.of(context).size.width,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/Mask group.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 300,
                          color: Colors.white,
                          child: Center(
                            child: Text('Content goes here'),
                          ),
                        ),
                        Container(
                          height: 300,
                          color: Colors.white,
                          child: Center(
                            child: Text('Content goes here'),
                          ),
                        ),
                        Container(
                          height: 300,
                          color: Colors.white,
                          child: Center(
                            child: Text('Content goes here'),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top:
                          50.0, // (background container size) - (circle height / 2)
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.green),
                      ),
                    )
                  ],
                ),
              ),
            )),
        tablet: Container(color: Colors.red),
        desktop: Scaffold(
          backgroundColor: const Color(0xFF1B1A1A),
          appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color(0xFF1B1A1A),
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
              Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 7,
                child: Container(
                  color: Color(0xFF000000),
                  child: Row(
                    children: [
                      Spacer(
                        flex: 2,
                      ),
                      Expanded(
                          flex: 5,
                          child: Container(
                              child: Column(
                            children: [
                              Image.asset(
                                  'assets/images/UsersPhotosDesktop.png'),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Nume Prenume',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          'user',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          'Reviews: 12 • ServiceFinder age: 1y 4m ',
                                          style: TextStyle(
                                              color: Colors.purple,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        ElevatedButton(
                                          child: Text('Settings',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.roboto(
                                                color: Colors.white,
                                                fontSize: 15,
                                              )),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFF1B1A1A),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 30, vertical: 20),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                          ),
                                          onPressed: (() =>
                                              context.go('/userAccount')),
                                        ),
                                        ElevatedButton(
                                          child: Text('Share',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.roboto(
                                                color: Colors.white,
                                                fontSize: 15,
                                              )),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFF1B1A1A),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 30, vertical: 20),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                          ),
                                          onPressed: (() =>
                                              context.go('/userAccount')),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    child: Text(
                                      'Reviews',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  )),
                            ],
                          ))),
                      Spacer(
                        flex: 2,
                      )
                    ],
                  ),
                ),
              ),
              Spacer(
                flex: 1,
              )
            ],
          ),
        ));
  }
}
