import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

//modificare
class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 75),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(99, 26, 144, 0.5),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          'Login',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 26,
                          ),
                        ),
                      ),
                    ),
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

                  ///Buton Sign In
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 75),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        //color: Color.fromRGBO(99, 26, 144, 0.5),
                        border: Border.all(
                            color: Color.fromRGBO(55, 22, 113, 1), width: 4),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          'Sign In',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 26,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
