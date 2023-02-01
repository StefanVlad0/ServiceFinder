import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:servicefinder/responsive.dart';
import 'login_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Responsive(
        mobile: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: const Color(0xFF000534),
            appBar: AppBar(
              backgroundColor: Color(0xFF000534),
              elevation: 0,
            ),
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
            )),
        desktop: new Scaffold(
          backgroundColor: const Color(0xFF000534),
          appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color(0xFF000534),
              actions: [
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
                      color: Color(0xFF474B84).withOpacity(0.3),
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
                      Container(
                        width: 500,
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
                      Container(
                        width: 500,
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

                      SizedBox(
                        height: 50,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        tablet: Scaffold(
          backgroundColor: const Color(0xFF000534),
          body: Center(
            child: Column(
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
                      color: Color(0xFF474B84).withOpacity(0.3),
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
                      Container(
                        width: 500,
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
                      Container(
                        width: 500,
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

                      SizedBox(
                        height: 50,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
