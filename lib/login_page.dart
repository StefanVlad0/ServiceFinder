import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFF000534),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                ///Distanta dintre inceputul ecranului si Email address
                const SizedBox(
                  height: 130,
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

                ///Distanta dintre Password si Login
                const SizedBox(
                  height: 75,
                ),

                ///Buton Login
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
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
                  height: 60,
                ),

                ///Text "Don't have an account?"
                Text("Don’t have an account?",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(255, 255, 255, 0.4),
                      fontSize: 16,
                      letterSpacing: 1,
                      decoration: TextDecoration.underline,
                    )),

                ///Distanta dintre Dont't have an account si Logo
                const SizedBox(
                  height: 50,
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
