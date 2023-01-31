import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF000534),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset('assets/images/Logo (1).png'),
                //SvgPicture.asset("assets/images/Logo.svg"),
                Text("Service Finder",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24,
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(99, 26, 144, 0.5)),
                    child: Center(child: Text('Sign in')),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
