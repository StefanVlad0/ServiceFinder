import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:servicefinder/Widgets/responsive.dart';
import 'package:go_router/go_router.dart';
import '../login_page.dart';

class SignInPageUser extends StatefulWidget {
  const SignInPageUser({super.key});

  @override
  State<SignInPageUser> createState() => _SignInPageUserState();
}

class _SignInPageUserState extends State<SignInPageUser> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    String? _countryValue;
    String? _cityValue;
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
                      ElevatedButton(
                        child: Text('Sign In',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 26,
                            )),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(101, 36, 163, 1),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 85, vertical: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        onPressed: (() => context.push('/userAccount')),
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
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
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
                        color: Color.fromRGBO(27, 26, 26, 1),
                        border: Border.all(),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    // width: 1000,
                    height: 320,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              // mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                      SizedBox(
                                        height: 10,
                                      ),
                                      //flag
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          DecoratedBox(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 4,
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 0.2)),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(50.0))),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15, right: 15),
                                              child: DropdownButton(
                                                hint: Text("Country",
                                                    style: GoogleFonts.outfit(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                    )),
                                                value: _countryValue,
                                                items: [
                                                  DropdownMenuItem(
                                                      child: Text("All",
                                                          style: GoogleFonts
                                                              .outfit(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                          )),
                                                      value: "All"),
                                                  DropdownMenuItem(
                                                      child: Text("5 stars",
                                                          style: GoogleFonts
                                                              .outfit(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                          )),
                                                      value: "5 stars"),
                                                  DropdownMenuItem(
                                                      child: Text("4 stars",
                                                          style: GoogleFonts
                                                              .outfit(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                          )),
                                                      value: "4 stars"),
                                                  DropdownMenuItem(
                                                      child: Text("3 stars",
                                                          style: GoogleFonts
                                                              .outfit(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                          )),
                                                      value: "3 stars"),
                                                  DropdownMenuItem(
                                                      child: Text("2 stars",
                                                          style: GoogleFonts
                                                              .outfit(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                          )),
                                                      value: "2 stars"),
                                                  DropdownMenuItem(
                                                      child: Text("1 star",
                                                          style: GoogleFonts
                                                              .outfit(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                          )),
                                                      value: "1 star"),
                                                ],
                                                onChanged: (String? value) =>
                                                    setState(() {
                                                  _countryValue = value ?? "";
                                                }),
                                                underline: Container(),
                                                iconEnabledColor: Colors.white,
                                                dropdownColor: Color.fromRGBO(
                                                    67, 67, 67, 1),
                                              ),
                                            ),
                                          ),
                                          DecoratedBox(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 4,
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 0.2)),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(50.0))),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15, right: 15),
                                              child: DropdownButton(
                                                //value: "rating",
                                                hint: Text("City",
                                                    style: GoogleFonts.outfit(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                    )),
                                                value: _cityValue,
                                                items: [
                                                  DropdownMenuItem(
                                                      child: Text("All",
                                                          style: GoogleFonts
                                                              .outfit(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                          )),
                                                      value: "All"),
                                                  DropdownMenuItem(
                                                      child: Text("5 stars",
                                                          style: GoogleFonts
                                                              .outfit(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                          )),
                                                      value: "5 stars"),
                                                  DropdownMenuItem(
                                                      child: Text("4 stars",
                                                          style: GoogleFonts
                                                              .outfit(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                          )),
                                                      value: "4 stars"),
                                                  DropdownMenuItem(
                                                      child: Text("3 stars",
                                                          style: GoogleFonts
                                                              .outfit(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                          )),
                                                      value: "3 stars"),
                                                  DropdownMenuItem(
                                                      child: Text("2 stars",
                                                          style: GoogleFonts
                                                              .outfit(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                          )),
                                                      value: "2 stars"),
                                                  DropdownMenuItem(
                                                      child: Text("1 star",
                                                          style: GoogleFonts
                                                              .outfit(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                          )),
                                                      value: "1 star"),
                                                ],
                                                onChanged: (String? value) =>
                                                    setState(() {
                                                  _cityValue = value ?? "";
                                                }),
                                                underline: Container(),
                                                iconEnabledColor: Colors.white,
                                                dropdownColor: Color.fromRGBO(
                                                    67, 67, 67, 1),
                                              ),
                                            ),
                                          ),
                                        ],
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
                                            hintText: 'Phone Number',
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
                                            hintText: 'Confirm Password',
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
                            Padding(
                              padding: const EdgeInsets.only(right: 250),
                              child: Container(
                                child: ElevatedButton(
                                  child: Text('Sign In',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 24,
                                      )),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF310F62),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 50, vertical: 20),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                  onPressed: (() => context.go('/userAccount')),
                                ),
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
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
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
                          color: Color.fromRGBO(27, 26, 26, 1),
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
                                    SizedBox(
                                      height: 10,
                                    ),
                                    //flag
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 4,
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 0.2)),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50.0))),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, right: 15),
                                            child: DropdownButton(
                                              hint: Text("Country",
                                                  style: GoogleFonts.outfit(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                  )),
                                              value: _countryValue,
                                              items: [
                                                DropdownMenuItem(
                                                    child: Text("All",
                                                        style:
                                                            GoogleFonts.outfit(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                        )),
                                                    value: "All"),
                                                DropdownMenuItem(
                                                    child: Text("5 stars",
                                                        style:
                                                            GoogleFonts.outfit(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                        )),
                                                    value: "5 stars"),
                                                DropdownMenuItem(
                                                    child: Text("4 stars",
                                                        style:
                                                            GoogleFonts.outfit(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                        )),
                                                    value: "4 stars"),
                                                DropdownMenuItem(
                                                    child: Text("3 stars",
                                                        style:
                                                            GoogleFonts.outfit(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                        )),
                                                    value: "3 stars"),
                                                DropdownMenuItem(
                                                    child: Text("2 stars",
                                                        style:
                                                            GoogleFonts.outfit(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                        )),
                                                    value: "2 stars"),
                                                DropdownMenuItem(
                                                    child: Text("1 star",
                                                        style:
                                                            GoogleFonts.outfit(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                        )),
                                                    value: "1 star"),
                                              ],
                                              onChanged: (String? value) =>
                                                  setState(() {
                                                _countryValue = value ?? "";
                                              }),
                                              underline: Container(),
                                              iconEnabledColor: Colors.white,
                                              dropdownColor:
                                                  Color.fromRGBO(67, 67, 67, 1),
                                            ),
                                          ),
                                        ),
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 4,
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 0.2)),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50.0))),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, right: 15),
                                            child: DropdownButton(
                                              //value: "rating",
                                              hint: Text("City",
                                                  style: GoogleFonts.outfit(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                  )),
                                              value: _cityValue,
                                              items: [
                                                DropdownMenuItem(
                                                    child: Text("All",
                                                        style:
                                                            GoogleFonts.outfit(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                        )),
                                                    value: "All"),
                                                DropdownMenuItem(
                                                    child: Text("5 stars",
                                                        style:
                                                            GoogleFonts.outfit(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                        )),
                                                    value: "5 stars"),
                                                DropdownMenuItem(
                                                    child: Text("4 stars",
                                                        style:
                                                            GoogleFonts.outfit(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                        )),
                                                    value: "4 stars"),
                                                DropdownMenuItem(
                                                    child: Text("3 stars",
                                                        style:
                                                            GoogleFonts.outfit(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                        )),
                                                    value: "3 stars"),
                                                DropdownMenuItem(
                                                    child: Text("2 stars",
                                                        style:
                                                            GoogleFonts.outfit(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                        )),
                                                    value: "2 stars"),
                                                DropdownMenuItem(
                                                    child: Text("1 star",
                                                        style:
                                                            GoogleFonts.outfit(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                        )),
                                                    value: "1 star"),
                                              ],
                                              onChanged: (String? value) =>
                                                  setState(() {
                                                _cityValue = value ?? "";
                                              }),
                                              underline: Container(),
                                              iconEnabledColor: Colors.white,
                                              dropdownColor:
                                                  Color.fromRGBO(67, 67, 67, 1),
                                            ),
                                          ),
                                        ),
                                      ],
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
                                          hintText: 'Phone Number',
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
                                      padding: const EdgeInsets.all(8),
                                      child: Container(
                                        child: ElevatedButton(
                                          child: Text('Sign In',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.roboto(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 24,
                                              )),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFF310F62),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 50, vertical: 20),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                          ),
                                          onPressed: (() =>
                                              context.go('/userAccount')),
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
                                          hintText: 'Confirm Password',
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
