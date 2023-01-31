import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF000534),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                ///Distanta dintre inceputul ecranului si Email address
                const SizedBox(
                  height: 150,
                ),

                ///Email adress
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        //<-- SEE HERE
                        borderSide: BorderSide(
                            width: 2,
                            color: Color.fromRGBO(255, 255, 255, 0.4)),
                      ),
                      hintText: 'Email address',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.4),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                ///Password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        //<-- SEE HERE
                        borderSide: BorderSide(
                            width: 3,
                            color: Color.fromRGBO(255, 255, 255, 0.4)),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.4),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                ///Confirm password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        //<-- SEE HERE
                        borderSide: BorderSide(
                            width: 3,
                            color: Color.fromRGBO(255, 255, 255, 0.4)),
                      ),
                      hintText: 'Confirm password',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.4),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                ///Distanta dintre Password si Sign In
                const SizedBox(
                  height: 45,
                ),

                ///Buton Sign In
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(99, 26, 144, 0.5),
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

                ///Spatiu dintre buton Sign In si logo
                const SizedBox(
                  height: 90,
                ),

                ///Logo
                Image.asset(
                  'assets/images/Logo (1).png',
                  scale: 1,
                ),
              ],
            ),
          ),
        ));
  }
}