import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:servicefinder/responsive.dart';
import 'package:go_router/go_router.dart';
import 'login_page.dart';

class SignInPageUser extends StatefulWidget {
  const SignInPageUser({super.key});

  @override
  State<SignInPageUser> createState() => _SignInPageUserState();
}

class _SignInPageUserState extends State<SignInPageUser> {
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ///Distanta dintre inceputul ecranului si Email address
                      const SizedBox(
                        height: 50,
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
                            hintText: 'First name',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.4),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
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
                            hintText: 'Last name',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.4),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
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
                            hintText: 'Email address',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.4),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

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
                            hintText: 'Phone number',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.4),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

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
                            hintText: 'Country',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.4),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

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
                            hintText: 'City',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.4),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

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
                      const SizedBox(
                        height: 20,
                      ),

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
                        height: 75,
                      ),

                      ///Logo
                      Image.asset(
                        'assets/images/Logo (1).png',
                        scale: 1,
                      ),
                    ],
                  ),
                ),
              ),
            )),
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
                        onTap: () {
                          return context.go('/loginPage');
                        }),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      child: Text('Sign In'),
                      onTap: () {
                        return context.go('/signinPage');
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
                Expanded(
                  flex: 5,
                  child: Image.asset(
                    'assets/images/LogoMarit.png',
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF474B84).withOpacity(0.3),
                        border: Border.all(),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    // width: 1000,
                    height: 300,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Container(
                                    //width: 400,
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          //<-- SEE HERE
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.4)),
                                        ),
                                        hintText: 'First Name',
                                        hintStyle: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.4),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    //width: 400,
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          //<-- SEE HERE
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.4)),
                                        ),
                                        hintText: 'Email address',
                                        hintStyle: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.4),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    //width: 400,
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          //<-- SEE HERE
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.4)),
                                        ),
                                        hintText: 'Password',
                                        hintStyle: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.4),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    //width: 400,
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          //<-- SEE HERE
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.4)),
                                        ),
                                        hintText: 'Confirm password',
                                        hintStyle: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.4),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 50),
                                    child: Container(
                                      width: 200,
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
                            SizedBox(
                              width: 60,
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Container(
                                    //width: 400,
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          //<-- SEE HERE
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.4)),
                                        ),
                                        hintText: 'Last Name',
                                        hintStyle: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.4),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    //width: 400,
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          //<-- SEE HERE
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.4)),
                                        ),
                                        hintText: 'Phone number',
                                        hintStyle: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.4),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    //width: 400,
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          //<-- SEE HERE
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.4)),
                                        ),
                                        hintText: 'Contry',
                                        hintStyle: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.4),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    //width: 400,
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          //<-- SEE HERE
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.4)),
                                        ),
                                        hintText: 'City',
                                        hintStyle: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.4),
                                          fontWeight: FontWeight.bold,
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
                  ),
                ),
                SizedBox(
                  width: 100,
                )
              ],
            ),
          ),
        ),
        tablet: Scaffold(
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
                          return context.go('/loginPage');
                        }),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      child: Text('Sign In'),
                      onTap: () {
                        return context.go('/signinPage');
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
                  flex: 2,
                  child: Image.asset(
                    'assets/images/LogoMarit.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF474B84).withOpacity(0.3),
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            // mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Container(
                                      //width: 400,
                                      child: TextField(
                                        style: TextStyle(color: Colors.white),
                                        decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            //<-- SEE HERE
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 0.4)),
                                          ),
                                          hintText: 'First Name',
                                          hintStyle: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.4),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      //width: 400,
                                      child: TextField(
                                        style: TextStyle(color: Colors.white),
                                        decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            //<-- SEE HERE
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 0.4)),
                                          ),
                                          hintText: 'Email address',
                                          hintStyle: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.4),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      //width: 400,
                                      child: TextField(
                                        style: TextStyle(color: Colors.white),
                                        decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            //<-- SEE HERE
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 0.4)),
                                          ),
                                          hintText: 'Password',
                                          hintStyle: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.4),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      //width: 400,
                                      child: TextField(
                                        style: TextStyle(color: Colors.white),
                                        decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            //<-- SEE HERE
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 0.4)),
                                          ),
                                          hintText: 'Confirm password',
                                          hintStyle: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.4),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 50),
                                      child: Container(
                                        width: 200,
                                        padding: EdgeInsets.all(15),
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(99, 26, 144, 0.5),
                                          borderRadius:
                                              BorderRadius.circular(50),
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
                              SizedBox(
                                width: 60,
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Container(
                                      child: TextField(
                                        style: TextStyle(color: Colors.white),
                                        decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            //<-- SEE HERE
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 0.4)),
                                          ),
                                          hintText: 'Last Name',
                                          hintStyle: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.4),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      //width: 400,
                                      child: TextField(
                                        style: TextStyle(color: Colors.white),
                                        decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            //<-- SEE HERE
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 0.4)),
                                          ),
                                          hintText: 'Phone number',
                                          hintStyle: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.4),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      //width: 400,
                                      child: TextField(
                                        style: TextStyle(color: Colors.white),
                                        decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            //<-- SEE HERE
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 0.4)),
                                          ),
                                          hintText: 'Contry',
                                          hintStyle: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.4),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      //width: 400,
                                      child: TextField(
                                        style: TextStyle(color: Colors.white),
                                        decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            //<-- SEE HERE
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 0.4)),
                                          ),
                                          hintText: 'City',
                                          hintStyle: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.4),
                                            fontWeight: FontWeight.bold,
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
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                )
              ],
            ),
          ),
        ));
  }
}
