import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
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
                          height: 115,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/Mask group.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 175,
                          color: Colors.black,
                          child: Center(
                            child: Column(
                              children: [
                                Spacer(flex: 3),
                                Text('Nume Prenume',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 26,
                                    )),
                                Spacer(flex: 1),
                                Text('Reviews: 12 • ServiceFinder age: 1y 4m',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(71, 75, 132, 1),
                                      fontSize: 14,
                                    )),
                                Spacer(flex: 2),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 70,
                          width: double.infinity,
                          color: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text("Reviews:",
                                style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 24,
                                )),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 65),
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(27, 26, 26, 1),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/service.png',
                                              height: 45,
                                              width: 45,
                                            ),
                                            SizedBox(
                                              width: 25,
                                            ),
                                            Flexible(
                                              fit: FlexFit.loose,
                                              child: Text(
                                                "Autocenter Srl",
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.outfit(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                ),
                                                softWrap: true,
                                              ),
                                            ),
                                          ],
                                        ),
                                        RatingBar.builder(
                                            initialRating: 3,
                                            ignoreGestures: true,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 30,
                                            itemPadding:
                                                const EdgeInsets.symmetric(
                                              horizontal: 1,
                                            ),
                                            itemBuilder: (context, _) =>
                                                const Icon(
                                                  Icons.star,
                                                  color: Color.fromRGBO(
                                                      221, 182, 95, 1),
                                                ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            })
                                      ],
                                    ),
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                    Positioned(
                      top:
                          60.0, // (background container size) - (circle height / 2)
                      child: Container(
                        height: 115.0,
                        width: 115.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/snoo2.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
        tablet: Scaffold(
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
          body: Container(
            color: Color(0xFF000000),
            child: Row(
              children: [
                Spacer(
                  flex: 1,
                ),
                Expanded(
                    flex: 5,
                    child: Container(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset('assets/images/UsersPhotosDesktop.png'),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                        SizedBox(
                          height: 20,
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
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(27, 26, 26, 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total Reviews:23',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/service.png',
                                        scale: 3,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text('Service SRL',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                          Text(
                                            '3.55',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      Spacer(),
                                      Expanded(
                                        flex: 5,
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              RatingBar.builder(
                                                  initialRating: 3,
                                                  ignoreGestures: true,
                                                  minRating: 1,
                                                  direction: Axis.horizontal,
                                                  allowHalfRating: true,
                                                  itemCount: 5,
                                                  itemSize: 30,
                                                  itemPadding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 1,
                                                  ),
                                                  itemBuilder: (context, _) =>
                                                      const Icon(
                                                        Icons.star,
                                                        color: Color.fromRGBO(
                                                            221, 182, 95, 1),
                                                      ),
                                                  onRatingUpdate: (rating) {
                                                    print(rating);
                                                  }),
                                              Text(
                                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/service.png',
                                        scale: 3,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text('Service SRL',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                          Text(
                                            '3.55',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      Spacer(
                                        flex: 1,
                                      ),
                                      Expanded(
                                        flex: 5,
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              RatingBar.builder(
                                                  initialRating: 3,
                                                  ignoreGestures: true,
                                                  minRating: 1,
                                                  direction: Axis.horizontal,
                                                  allowHalfRating: true,
                                                  itemCount: 5,
                                                  itemSize: 30,
                                                  itemPadding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 1,
                                                  ),
                                                  itemBuilder: (context, _) =>
                                                      const Icon(
                                                        Icons.star,
                                                        color: Color.fromRGBO(
                                                            221, 182, 95, 1),
                                                      ),
                                                  onRatingUpdate: (rating) {
                                                    print(rating);
                                                  }),
                                              Text(
                                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                    child: Text(
                                      'See more...',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ],
                    ))),
                Spacer(
                  flex: 1,
                )
              ],
            ),
          ),
        ),
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
                              SizedBox(
                                height: 30,
                              ),
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
                              SizedBox(
                                height: 20,
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
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(27, 26, 26, 1),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Total Reviews:23',
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.6),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Divider(
                                          color: Colors.white.withOpacity(0.5),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              'assets/images/service.png',
                                              scale: 3,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text('Service SRL',
                                                      style: TextStyle(
                                                          color: Colors.white)),
                                                ),
                                                Text(
                                                  '3.55',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                            Spacer(),
                                            Expanded(
                                              flex: 5,
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    RatingBar.builder(
                                                        initialRating: 3,
                                                        ignoreGestures: true,
                                                        minRating: 1,
                                                        direction:
                                                            Axis.horizontal,
                                                        allowHalfRating: true,
                                                        itemCount: 5,
                                                        itemSize: 30,
                                                        itemPadding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                          horizontal: 1,
                                                        ),
                                                        itemBuilder:
                                                            (context, _) =>
                                                                const Icon(
                                                                  Icons.star,
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          221,
                                                                          182,
                                                                          95,
                                                                          1),
                                                                ),
                                                        onRatingUpdate:
                                                            (rating) {
                                                          print(rating);
                                                        }),
                                                    Text(
                                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Divider(
                                          color: Colors.white.withOpacity(0.5),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              'assets/images/service.png',
                                              scale: 3,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text('Service SRL',
                                                      style: TextStyle(
                                                          color: Colors.white)),
                                                ),
                                                Text(
                                                  '3.55',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                            Spacer(
                                              flex: 1,
                                            ),
                                            Expanded(
                                              flex: 5,
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    RatingBar.builder(
                                                        initialRating: 3,
                                                        ignoreGestures: true,
                                                        minRating: 1,
                                                        direction:
                                                            Axis.horizontal,
                                                        allowHalfRating: true,
                                                        itemCount: 5,
                                                        itemSize: 30,
                                                        itemPadding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                          horizontal: 1,
                                                        ),
                                                        itemBuilder:
                                                            (context, _) =>
                                                                const Icon(
                                                                  Icons.star,
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          221,
                                                                          182,
                                                                          95,
                                                                          1),
                                                                ),
                                                        onRatingUpdate:
                                                            (rating) {
                                                          print(rating);
                                                        }),
                                                    Text(
                                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Center(
                                          child: Text(
                                            'See more...',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ]),
                                ),
                              ),
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
