import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:servicefinder/login_page.dart';
import 'package:servicefinder/responsive.dart';
import 'package:servicefinder/signin_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

//modificare
class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Scaffold(
          backgroundColor: const Color(0xFF000534),
          body: SafeArea(
            child: Container(
              ///gradientul de sus
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.topCenter,
                  colors: [
                    Color.fromRGBO(50, 15, 98, 0.8),
                    Color(0xFF000534),
                  ],
                  stops: [
                    0.5,
                    1,
                  ],
                ),
              ),

              child: Center(
                child: Column(
                  children: [
                    ///Spatiu liber pana la poza
                    const SizedBox(
                      height: 60,
                    ),

                    ///Logo
                    Image.asset(
                      'assets/images/Logo (1).png',
                      scale: 0.75,
                    ),

                    ///Text "Service Finder"
                    Text("Service Finder",
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 32,
                        )),

                    ///Spatiu dintre "Service Finder" si buton Login
                    const SizedBox(
                      height: 115,
                    ),

                    ///Buton Login
                    ///
                    ElevatedButton(
                      child: Text('Login',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 26,
                          )),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF310F62),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 85, vertical: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                    ),

                    ///Spatiu dintre buton login si "Don't have an account?"
                    const SizedBox(
                      height: 38,
                    ),

                    ///Text "Don't have an account?"
                    Text("Don’t have an account?",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 255, 255, 0.4),
                          fontSize: 14,
                          letterSpacing: 1,
                        )),
                    const SizedBox(
                      height: 10,
                    ),

                    ///Buton SignIn
                    ///
                    ElevatedButton(
                      child: Text('Sign In',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 26,
                          )),
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(
                              width: 4, color: Color.fromRGBO(55, 22, 113, 1)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          backgroundColor: Color(0xFF000534),
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 85)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInPage()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          )),
      desktop: Scaffold(
          backgroundColor: const Color(0xFF000534),
          appBar: AppBar(backgroundColor: Color(0xFF000534), actions: [
            Row(
              children: [
                InkWell(
                  child: Text('Login'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  child: Text('Sign In'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInPage()),
                    );
                  },
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
          ]),
          body: SafeArea(
            child: Container(
              ///gradientul de sus
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(50, 15, 98, 0.8),
                    Color(0xFF000534),
                  ],
                  stops: [
                    0.5,
                    1,
                  ],
                ),
              ),

              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ///Logo
                    Image.asset(
                      'assets/images/LogoMarit.png',
                    ),
                    SizedBox(
                      width: 150,
                    ),

                    ///Text "Service Finder"
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Service Finder",
                              style: GoogleFonts.outfit(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 32,
                              )),
                          Container(
                            width: 500,
                            child: Text(
                              "    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                child: Text('Login',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 26,
                                    )),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF310F62),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 85, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPage()),
                                  );
                                },
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              ElevatedButton(
                                child: Text('Sign In',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 26,
                                    )),
                                style: ElevatedButton.styleFrom(
                                    side: const BorderSide(
                                        width: 4,
                                        color: Color.fromRGBO(55, 22, 113, 1)),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    backgroundColor: Color(0xFF000534),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 85)),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignInPage()),
                                  );
                                },
                              ),
                            ],
                          ),
                        ]),
                  ],
                ),
              ),
            ),
          )),
      tablet: Scaffold(
          backgroundColor: const Color(0xFF000534),
          appBar: AppBar(backgroundColor: Color(0xFF000534), actions: [
            Row(
              children: [
                InkWell(
                  child: Text('Login'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  child: Text('Sign In'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInPage()),
                    );
                  },
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
          ]),
          body: SafeArea(
            child: Container(
              ///gradientul de sus
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.centerLeft,
                  colors: [
                    Color.fromRGBO(50, 15, 98, 0.8),
                    Color(0xFF000534),
                  ],
                  stops: [
                    0.5,
                    1,
                  ],
                ),
              ),

              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ///Logo
                    Image.asset(
                      'assets/images/LogoMarit.png',
                    ),
                    SizedBox(
                      width: 150,
                    ),

                    ///Text "Service Finder"
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Service Finder",
                              style: GoogleFonts.outfit(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 32,
                              )),
                          Container(
                            width: 500,
                            child: Text(
                              "    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                child: Text('Login',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 26,
                                    )),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF310F62),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 85, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPage()),
                                  );
                                },
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              ElevatedButton(
                                child: Text('Sign In',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 26,
                                    )),
                                style: ElevatedButton.styleFrom(
                                    side: const BorderSide(
                                        width: 4,
                                        color: Color.fromRGBO(55, 22, 113, 1)),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    backgroundColor: Color(0xFF000534),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 85)),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignInPage()),
                                  );
                                },
                              ),
                            ],
                          ),
                        ]),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
