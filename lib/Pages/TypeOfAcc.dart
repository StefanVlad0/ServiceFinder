import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:servicefinder/Widgets/responsive.dart';
import 'package:servicefinder/Pages/customer/signin_page_user.dart';
import 'package:go_router/go_router.dart';
import '../main.dart';
import '../Widgets/responsive.dart';

class TypeOfAcc extends StatefulWidget {
  const TypeOfAcc({super.key});

  @override
  State<TypeOfAcc> createState() => _TypeOfAccState();
}

class _TypeOfAccState extends State<TypeOfAcc> {
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
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ///Distanta dintre inceputul ecranului si Email address

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Container(
                      height: 400,
                      //padding:
                      //  EdgeInsets.symmetric(vertical: 150, horizontal: 25),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(27, 26, 26, 1),
                        borderRadius: BorderRadius.circular(50),
                      ),

                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Spacer(
                            flex: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'What type of account do you want to create?',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 26,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 3,
                          ),
                          ElevatedButton(
                            child: Text('Customer',
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 20,
                                )),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(101, 36, 163, 1),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 15),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            onPressed: (() => context.push('/signinPageUser')),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            child: Text('Service',
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 20,
                                )),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(101, 36, 163, 1),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 60, vertical: 15),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            onPressed: (() =>
                                context.push('/signinPageService')),
                          ),
                          Spacer(
                            flex: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
      desktop: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            actions: [
              Row(
                children: [
                  InkWell(
                    child: Text('Login'),
                    onTap: () {
                      return context.go('/loginPage');
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    child: Text('Sign In'),
                    onTap: () {
                      return context.go('/typeOfAccount');
                    },
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ]),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/LogoMarit.png',
              ),
              SizedBox(
                width: 200,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(27, 26, 26, 1),
                    border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 550,
                height: 400,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 500,
                      child: Text(
                        'What type of account do you want to create?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 32,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    //rand cu buton customer si service
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Center(
                            child: ElevatedButton(
                              child: Text('Customer',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 23,
                                  )),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromRGBO(101, 36, 163, 1),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 25),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              onPressed: () => context.go('/signinPageUser'),
                            ),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: ElevatedButton(
                              child: Text('Service',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 23,
                                  )),
                              style: ElevatedButton.styleFrom(
                                  side: const BorderSide(
                                      width: 4,
                                      color: Color.fromRGBO(101, 36, 163, 1)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  backgroundColor:
                                      Color.fromRGBO(101, 36, 163, 1),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 25, horizontal: 50)),
                              onPressed: () => context.go('/signinPageService'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      tablet: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            actions: [
              Row(
                children: [
                  InkWell(
                    child: Text('Login'),
                    onTap: () {
                      return context.go('/loginPage');
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    child: Text('Sign In'),
                    onTap: () {
                      return context.go('/typeOfAccount');
                    },
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/LogoMarit.png',
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(27, 26, 26, 1),
                      border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 500,
                        child: Text(
                          'What type of account do you want to create?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 32,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),

                      //rand cu buton customer si service
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Center(
                              child: ElevatedButton(
                                child: Text('Customer',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 23,
                                    )),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(101, 36, 163, 1),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                onPressed: () => context.go('/signinPageUser'),
                              ),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: ElevatedButton(
                                child: Text('Service',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 26,
                                    )),
                                style: ElevatedButton.styleFrom(
                                    side: const BorderSide(
                                        width: 4,
                                        color: Color.fromRGBO(101, 36, 163, 1)),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    backgroundColor:
                                        Color.fromRGBO(101, 36, 163, 1),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 50)),
                                onPressed: () =>
                                    context.go('/signinPageService'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
