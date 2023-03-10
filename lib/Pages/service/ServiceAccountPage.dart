import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:servicefinder/Widgets/responsive.dart';

class ServiceAccountPage extends StatefulWidget {
  const ServiceAccountPage({super.key});

  @override
  State<ServiceAccountPage> createState() => _ServiceAccountPageState();
}

class _ServiceAccountPageState extends State<ServiceAccountPage>
    with SingleTickerProviderStateMixin {
  final bodyGlobalKey = GlobalKey();
  final List<Widget> myTabs = [
    Tab(text: 'Service Info'),
    Tab(text: 'Reviews'),
    //Tab(text: 'fixed'),
  ];
  late TabController _tabController;
  late ScrollController _scrollController;
  late bool fixedScroll;
  String? _dateValue;
  String? _ratingValue;
  bool _isVisible = false;

  Widget _buildCarousel() {
    return Stack(
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
                    Text('Service SRL',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset('assets/images/sharethis-128.png'),
                  iconSize: 10,
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: Image.asset('assets/images/flag-128.png'),
                  iconSize: 10,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
        Positioned(
          top: 60.0, // (background container size) - (circle height / 2)
          child: Container(
            height: 115.0,
            width: 115.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("assets/images/service.png"),
                  fit: BoxFit.cover),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildCarouselDesktop() {
    return Column(
      children: [
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
                        color: Colors.purple, fontWeight: FontWeight.bold),
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
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    onPressed: (() => context.go('/userAccount')),
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
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    onPressed: (() => context.go('/userAccount')),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

//flag
  _buildCarouselTablet() {
    return Column(
      children: [
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
                        color: Colors.purple, fontWeight: FontWeight.bold),
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
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    onPressed: (() => context.go('/userAccount')),
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
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    onPressed: (() => context.go('/userAccount')),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  _buildProfileInfoD() {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(27, 26, 26, 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Full address:",
                      style: GoogleFonts.outfit(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 15),
                    child: Text("adresa adresa",
                        style: GoogleFonts.outfit(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Email address:",
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 15),
                    child: Text("example@domain.com",
                        style: GoogleFonts.outfit(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Phone number:",
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 15),
                    child: Text("0722222222",
                        style: GoogleFonts.outfit(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                  ),
                ],
              ),
              ElevatedButton(
                child: Text('Schedule',
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 20,
                    )),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(101, 36, 163, 1),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
                onPressed: (() => context.go('/signinPageService')),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_smoothScrollToTop);

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  _scrollListener() {
    // if (fixedScroll) {
    //   _scrollController.jumpTo(0);
    // }
  }

  _smoothScrollToTop() {
    setState(() {
      fixedScroll = _tabController.index == 0;
    });
  }

  _buildTabContext(int lineCount) => Container(
        child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          itemCount: lineCount,
          itemBuilder: (BuildContext context, int index) {
            return Text('some content', style: TextStyle(color: Colors.white));
          },
        ),
      );

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
          //flag
          body: NestedScrollView(
            controller: _scrollController,
            headerSliverBuilder: (context, value) {
              return [
                SliverToBoxAdapter(child: _buildCarousel()),
                SliverToBoxAdapter(
                  child: Center(
                    child: TabBar(
                      controller: _tabController,
                      labelColor: Colors.white,
                      isScrollable: true,
                      tabs: myTabs,
                    ),
                  ),
                ),
              ];
            },
            body: Container(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(27, 26, 26, 1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Full address:",
                                        style: GoogleFonts.outfit(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30, bottom: 15),
                                    child: Text("adresa adresa",
                                        style: GoogleFonts.outfit(
                                          color: Colors.white,
                                          fontSize: 20,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Email address:",
                                        style: GoogleFonts.outfit(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30, bottom: 15),
                                    child: Text("example@domain.com",
                                        style: GoogleFonts.outfit(
                                          color: Colors.white,
                                          fontSize: 20,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Phone number:",
                                        style: GoogleFonts.outfit(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30, bottom: 15),
                                    child: Text("0722222222",
                                        style: GoogleFonts.outfit(
                                          color: Colors.white,
                                          fontSize: 20,
                                        )),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: ElevatedButton(
                                      child: Text('Schedule',
                                          style: GoogleFonts.roboto(
                                            color: Colors.white,
                                            fontSize: 20,
                                          )),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromRGBO(101, 36, 163, 1),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 60, vertical: 15),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                      ),
                                      onPressed: (() =>
                                          context.push('/signinPageService')),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                  //_buildTabContext(2),
                  ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: ElevatedButton(
                                child: Text('Leave a review',
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 22,
                                    )),
                                style: ElevatedButton.styleFrom(
                                    side: const BorderSide(
                                        width: 3,
                                        color:
                                            Color.fromRGBO(178, 178, 178, 1)),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    backgroundColor:
                                        Color.fromARGB(255, 0, 0, 0),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 25)),
                                onPressed: () {
                                  setState(() {
                                    _isVisible = !_isVisible;
                                  });
                                },
                              ),
                            ),
                            Visibility(
                              visible: _isVisible,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
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
                                    hintText: 'Write Here',
                                    hintStyle: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 0.4),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: double.infinity,
                              color: Colors.black,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text("Sort by",
                                    style: GoogleFonts.outfit(
                                      color: Colors.white,
                                      fontSize: 20,
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 25),
                              child: Row(
                                children: [
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(67, 67, 67, 1),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30),
                                      child: DropdownButton(
                                        //value: "rating",
                                        hint: Text("Rating",
                                            style: GoogleFonts.outfit(
                                              color: Colors.white,
                                              fontSize: 18,
                                            )),
                                        value: _ratingValue,
                                        items: [
                                          DropdownMenuItem(
                                              child: Text("All",
                                                  style: GoogleFonts.outfit(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                  )),
                                              value: "All"),
                                          DropdownMenuItem(
                                              child: Text("5 stars",
                                                  style: GoogleFonts.outfit(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                  )),
                                              value: "5 stars"),
                                          DropdownMenuItem(
                                              child: Text("4 stars",
                                                  style: GoogleFonts.outfit(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                  )),
                                              value: "4 stars"),
                                          DropdownMenuItem(
                                              child: Text("3 stars",
                                                  style: GoogleFonts.outfit(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                  )),
                                              value: "3 stars"),
                                          DropdownMenuItem(
                                              child: Text("2 stars",
                                                  style: GoogleFonts.outfit(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                  )),
                                              value: "2 stars"),
                                          DropdownMenuItem(
                                              child: Text("1 star",
                                                  style: GoogleFonts.outfit(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                  )),
                                              value: "1 star"),
                                        ],
                                        onChanged: (String? value) =>
                                            setState(() {
                                          _ratingValue = value ?? "";
                                        }),
                                        underline: Container(),
                                        iconEnabledColor: Colors.white,
                                        dropdownColor:
                                            Color.fromRGBO(67, 67, 67, 1),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(67, 67, 67, 1),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30),
                                      child: DropdownButton(
                                        hint: Text("Date",
                                            style: GoogleFonts.outfit(
                                              color: Colors.white,
                                              fontSize: 18,
                                            )),
                                        value: _dateValue,
                                        items: [
                                          DropdownMenuItem(
                                              child: Text("Newest",
                                                  style: GoogleFonts.outfit(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                  )),
                                              value: "Newest"),
                                          DropdownMenuItem(
                                              child: Text("Oldest",
                                                  style: GoogleFonts.outfit(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                  )),
                                              value: "Oldest"),
                                        ],
                                        onChanged: (String? value) =>
                                            setState(() {
                                          _dateValue = value ?? "";
                                        }),
                                        underline: Container(),
                                        iconEnabledColor: Colors.white,
                                        dropdownColor:
                                            Color.fromRGBO(67, 67, 67, 1),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),

                            /// Review
                            Padding(
                              padding: const EdgeInsets.only(bottom: 25),
                              child: Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 65),
                                      child: Container(
                                        padding: EdgeInsets.all(15),
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(27, 26, 26, 1),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/snoo2.jpg',
                                                    height: 45,
                                                    width: 45,
                                                  ),
                                                  SizedBox(
                                                    width: 25,
                                                  ),
                                                  Flexible(
                                                    fit: FlexFit.loose,
                                                    child: Text(
                                                      "Nume Prenume",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: GoogleFonts.outfit(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                      ),
                                                      softWrap: true,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: RatingBar.builder(
                                                    initialRating: 3,
                                                    unratedColor: Colors.white,
                                                    ignoreGestures: true,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: true,
                                                    itemCount: 5,
                                                    itemSize: 30,
                                                    itemPadding:
                                                        const EdgeInsets
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
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Text(
                                                  "24-10-2020",
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.outfit(
                                                    //fontWeight: FontWeight.bold,
                                                    color: Color.fromRGBO(
                                                        212, 212, 212, 1),
                                                    fontSize: 18,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10),
                                                child: Divider(
                                                  color: Colors.black,
                                                  thickness: 2,
                                                ),
                                              ),
                                              Text(
                                                'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus',
                                                style: GoogleFonts.roboto(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 25),
                              child: Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 65),
                                      child: Container(
                                        padding: EdgeInsets.all(15),
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(27, 26, 26, 1),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/snoo2.jpg',
                                                    height: 45,
                                                    width: 45,
                                                  ),
                                                  SizedBox(
                                                    width: 25,
                                                  ),
                                                  Flexible(
                                                    fit: FlexFit.loose,
                                                    child: Text(
                                                      "Nume Prenume",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: GoogleFonts.outfit(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                      ),
                                                      softWrap: true,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: RatingBar.builder(
                                                    initialRating: 3,
                                                    unratedColor: Colors.white,
                                                    ignoreGestures: true,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: true,
                                                    itemCount: 5,
                                                    itemSize: 30,
                                                    itemPadding:
                                                        const EdgeInsets
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
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Text(
                                                  "24-10-2020",
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.outfit(
                                                    //fontWeight: FontWeight.bold,
                                                    color: Color.fromRGBO(
                                                        212, 212, 212, 1),
                                                    fontSize: 18,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10),
                                                child: Divider(
                                                  color: Colors.black,
                                                  thickness: 2,
                                                ),
                                              ),
                                              Text(
                                                'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus',
                                                style: GoogleFonts.roboto(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        );
                      })
                  //_buildTabContext(200),
                  // _buildTabContext(2)
                ],
              ),
            ),
          ),
        ),
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
          body: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: MediaQuery.of(context).size.height),
            child: Container(
              color: Color(0xFF000000),
              child: Row(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                      flex: 5,
                      child: NestedScrollView(
                        controller: _scrollController,
                        headerSliverBuilder: (context, value) {
                          return [
                            SliverToBoxAdapter(child: _buildCarouselTablet()),
                            SliverToBoxAdapter(
                              child: Center(
                                child: TabBar(
                                  controller: _tabController,
                                  labelColor: Colors.white,
                                  isScrollable: true,
                                  tabs: myTabs,
                                ),
                              ),
                            ),
                          ];
                        },
                        body: TabBarView(controller: _tabController, children: [
                          _buildProfileInfoD(),
                          SingleChildScrollView(
                            child: Container(
                                child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Column(
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 20),
                                          child: ElevatedButton(
                                            child: Text('Leave a review',
                                                style: GoogleFonts.roboto(
                                                  color: Colors.white,
                                                  fontSize: 22,
                                                )),
                                            style: ElevatedButton.styleFrom(
                                                side: const BorderSide(
                                                    width: 3,
                                                    color: Color.fromRGBO(
                                                        178, 178, 178, 1)),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                                backgroundColor: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 20,
                                                        horizontal: 25)),
                                            onPressed: () {
                                              setState(() {
                                                _isVisible = !_isVisible;
                                              });
                                            },
                                          ),
                                        ),
                                        Visibility(
                                          visible: _isVisible,
                                          child: TextField(
                                            style:
                                                TextStyle(color: Colors.white),
                                            decoration: InputDecoration(
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                //<-- SEE HERE
                                                borderSide: BorderSide(
                                                    width: 2,
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 0.4)),
                                              ),
                                              hintText: 'Write Here',
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
                                          padding:
                                              const EdgeInsets.only(bottom: 25),
                                          child: Row(
                                            children: [
                                              Spacer(),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      67, 67, 67, 1),
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 30),
                                                  child: DropdownButton(
                                                    //value: "rating",
                                                    hint: Text("Rating",
                                                        style:
                                                            GoogleFonts.outfit(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                        )),
                                                    value: _ratingValue,
                                                    items: [
                                                      DropdownMenuItem(
                                                          child: Text("All",
                                                              style: GoogleFonts
                                                                  .outfit(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 18,
                                                              )),
                                                          value: "All"),
                                                      DropdownMenuItem(
                                                          child: Text("5 stars",
                                                              style: GoogleFonts
                                                                  .outfit(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 18,
                                                              )),
                                                          value: "5 stars"),
                                                      DropdownMenuItem(
                                                          child: Text("4 stars",
                                                              style: GoogleFonts
                                                                  .outfit(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 18,
                                                              )),
                                                          value: "4 stars"),
                                                      DropdownMenuItem(
                                                          child: Text("3 stars",
                                                              style: GoogleFonts
                                                                  .outfit(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 18,
                                                              )),
                                                          value: "3 stars"),
                                                      DropdownMenuItem(
                                                          child: Text("2 stars",
                                                              style: GoogleFonts
                                                                  .outfit(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 18,
                                                              )),
                                                          value: "2 stars"),
                                                      DropdownMenuItem(
                                                          child: Text("1 star",
                                                              style: GoogleFonts
                                                                  .outfit(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 18,
                                                              )),
                                                          value: "1 star"),
                                                    ],
                                                    onChanged:
                                                        (String? value) =>
                                                            setState(() {
                                                      _ratingValue =
                                                          value ?? "";
                                                    }),
                                                    underline: Container(),
                                                    iconEnabledColor:
                                                        Colors.white,
                                                    dropdownColor:
                                                        Color.fromRGBO(
                                                            67, 67, 67, 1),
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      67, 67, 67, 1),
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 30),
                                                  child: DropdownButton(
                                                    hint: Text("Date",
                                                        style:
                                                            GoogleFonts.outfit(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                        )),
                                                    value: _dateValue,
                                                    items: [
                                                      DropdownMenuItem(
                                                          child: Text("Newest",
                                                              style: GoogleFonts
                                                                  .outfit(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 18,
                                                              )),
                                                          value: "Newest"),
                                                      DropdownMenuItem(
                                                          child: Text("Oldest",
                                                              style: GoogleFonts
                                                                  .outfit(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 18,
                                                              )),
                                                          value: "Oldest"),
                                                    ],
                                                    onChanged:
                                                        (String? value) =>
                                                            setState(() {
                                                      _dateValue = value ?? "";
                                                    }),
                                                    underline: Container(),
                                                    iconEnabledColor:
                                                        Colors.white,
                                                    dropdownColor:
                                                        Color.fromRGBO(
                                                            67, 67, 67, 1),
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
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
                                        child: SingleChildScrollView(
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Total Reviews:23',
                                                  style: TextStyle(
                                                    color: Colors.white
                                                        .withOpacity(0.6),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Divider(
                                                  color: Colors.white
                                                      .withOpacity(0.5),
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
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          child: Text(
                                                              'Service SRL',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white)),
                                                        ),
                                                        Text(
                                                          '3.55',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        )
                                                      ],
                                                    ),
                                                    Spacer(),
                                                    Expanded(
                                                      flex: 5,
                                                      child: Container(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            RatingBar.builder(
                                                                initialRating:
                                                                    3,
                                                                ignoreGestures:
                                                                    true,
                                                                minRating: 1,
                                                                direction: Axis
                                                                    .horizontal,
                                                                allowHalfRating:
                                                                    true,
                                                                itemCount: 5,
                                                                itemSize: 30,
                                                                itemPadding:
                                                                    const EdgeInsets
                                                                        .symmetric(
                                                                  horizontal: 1,
                                                                ),
                                                                itemBuilder:
                                                                    (context,
                                                                            _) =>
                                                                        const Icon(
                                                                          Icons
                                                                              .star,
                                                                          color: Color.fromRGBO(
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
                                                                  color: Colors
                                                                      .white,
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
                                                  color: Colors.white
                                                      .withOpacity(0.5),
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
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          child: Text(
                                                              'Service SRL',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white)),
                                                        ),
                                                        Text(
                                                          '3.55',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
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
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            RatingBar.builder(
                                                                initialRating:
                                                                    3,
                                                                ignoreGestures:
                                                                    true,
                                                                minRating: 1,
                                                                direction: Axis
                                                                    .horizontal,
                                                                allowHalfRating:
                                                                    true,
                                                                itemCount: 5,
                                                                itemSize: 30,
                                                                itemPadding:
                                                                    const EdgeInsets
                                                                        .symmetric(
                                                                  horizontal: 1,
                                                                ),
                                                                itemBuilder:
                                                                    (context,
                                                                            _) =>
                                                                        const Icon(
                                                                          Icons
                                                                              .star,
                                                                          color: Color.fromRGBO(
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
                                                                  color: Colors
                                                                      .white,
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
                                                  color: Colors.white
                                                      .withOpacity(0.5),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
                                    child: Container(
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Total Reviews:23',
                                              style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(0.6),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Divider(
                                              color:
                                                  Colors.white.withOpacity(0.5),
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
                                                              color: Colors
                                                                  .white)),
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
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        RatingBar.builder(
                                                            initialRating: 3,
                                                            ignoreGestures:
                                                                true,
                                                            minRating: 1,
                                                            direction:
                                                                Axis.horizontal,
                                                            allowHalfRating:
                                                                true,
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
                                                                      Icons
                                                                          .star,
                                                                      color: Color.fromRGBO(
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
                                                              color:
                                                                  Colors.white,
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
                                              color:
                                                  Colors.white.withOpacity(0.5),
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
                                                              color: Colors
                                                                  .white)),
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
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        RatingBar.builder(
                                                            initialRating: 3,
                                                            ignoreGestures:
                                                                true,
                                                            minRating: 1,
                                                            direction:
                                                                Axis.horizontal,
                                                            allowHalfRating:
                                                                true,
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
                                                                      Icons
                                                                          .star,
                                                                      color: Color.fromRGBO(
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
                                                              color:
                                                                  Colors.white,
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
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            )
                                          ]),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                          ),
                        ]),
                      )),
                  Spacer(
                    flex: 1,
                  )
                ],
              ),
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
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height),
                  child: Container(
                    //flag 1
                    color: Color(0xFF000000),
                    child: Row(
                      children: [
                        Spacer(
                          flex: 2,
                        ),
                        Expanded(
                            flex: 5,
                            //flg
                            child: NestedScrollView(
                              controller: _scrollController,
                              headerSliverBuilder: (context, value) {
                                return [
                                  SliverToBoxAdapter(
                                      child: _buildCarouselDesktop()),
                                  SliverToBoxAdapter(
                                    child: Center(
                                      child: TabBar(
                                        controller: _tabController,
                                        labelColor: Colors.white,
                                        isScrollable: true,
                                        tabs: myTabs,
                                      ),
                                    ),
                                  ),
                                ];
                              },
                              body: TabBarView(
                                  controller: _tabController,
                                  children: [
                                    _buildProfileInfoD(),
                                    SingleChildScrollView(
                                      child: Container(
                                          child: Column(
                                        children: [
                                          Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 20),
                                                child: ElevatedButton(
                                                  child: Text('Leave a review',
                                                      style: GoogleFonts.roboto(
                                                        color: Colors.white,
                                                        fontSize: 22,
                                                      )),
                                                  style: ElevatedButton.styleFrom(
                                                      side: const BorderSide(
                                                          width: 3,
                                                          color: Color.fromRGBO(
                                                              178,
                                                              178,
                                                              178,
                                                              1)),
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  50)),
                                                      backgroundColor:
                                                          Color.fromARGB(
                                                              255, 0, 0, 0),
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 20,
                                                          horizontal: 25)),
                                                  onPressed: () {
                                                    setState(() {
                                                      _isVisible = !_isVisible;
                                                    });
                                                  },
                                                ),
                                              ),
                                              Visibility(
                                                visible: _isVisible,
                                                child: TextField(
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                  decoration: InputDecoration(
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      //<-- SEE HERE
                                                      borderSide: BorderSide(
                                                          width: 2,
                                                          color: Color.fromRGBO(
                                                              255,
                                                              255,
                                                              255,
                                                              0.4)),
                                                    ),
                                                    hintText: 'Write Here',
                                                    hintStyle: TextStyle(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 0.4),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 25),
                                                child: Row(
                                                  children: [
                                                    Spacer(),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: Color.fromRGBO(
                                                            67, 67, 67, 1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 30),
                                                        child: DropdownButton(
                                                          //value: "rating",
                                                          hint: Text("Rating",
                                                              style: GoogleFonts
                                                                  .outfit(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 18,
                                                              )),
                                                          value: _ratingValue,
                                                          items: [
                                                            DropdownMenuItem(
                                                                child: Text(
                                                                    "All",
                                                                    style: GoogleFonts
                                                                        .outfit(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          18,
                                                                    )),
                                                                value: "All"),
                                                            DropdownMenuItem(
                                                                child: Text(
                                                                    "5 stars",
                                                                    style: GoogleFonts
                                                                        .outfit(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          18,
                                                                    )),
                                                                value:
                                                                    "5 stars"),
                                                            DropdownMenuItem(
                                                                child: Text(
                                                                    "4 stars",
                                                                    style: GoogleFonts
                                                                        .outfit(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          18,
                                                                    )),
                                                                value:
                                                                    "4 stars"),
                                                            DropdownMenuItem(
                                                                child: Text(
                                                                    "3 stars",
                                                                    style: GoogleFonts
                                                                        .outfit(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          18,
                                                                    )),
                                                                value:
                                                                    "3 stars"),
                                                            DropdownMenuItem(
                                                                child: Text(
                                                                    "2 stars",
                                                                    style: GoogleFonts
                                                                        .outfit(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          18,
                                                                    )),
                                                                value:
                                                                    "2 stars"),
                                                            DropdownMenuItem(
                                                                child: Text(
                                                                    "1 star",
                                                                    style: GoogleFonts
                                                                        .outfit(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          18,
                                                                    )),
                                                                value:
                                                                    "1 star"),
                                                          ],
                                                          onChanged:
                                                              (String? value) =>
                                                                  setState(() {
                                                            _ratingValue =
                                                                value ?? "";
                                                          }),
                                                          underline:
                                                              Container(),
                                                          iconEnabledColor:
                                                              Colors.white,
                                                          dropdownColor:
                                                              Color.fromRGBO(67,
                                                                  67, 67, 1),
                                                        ),
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: Color.fromRGBO(
                                                            67, 67, 67, 1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 30),
                                                        child: DropdownButton(
                                                          hint: Text("Date",
                                                              style: GoogleFonts
                                                                  .outfit(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 18,
                                                              )),
                                                          value: _dateValue,
                                                          items: [
                                                            DropdownMenuItem(
                                                                child: Text(
                                                                    "Newest",
                                                                    style: GoogleFonts
                                                                        .outfit(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          18,
                                                                    )),
                                                                value:
                                                                    "Newest"),
                                                            DropdownMenuItem(
                                                                child: Text(
                                                                    "Oldest",
                                                                    style: GoogleFonts
                                                                        .outfit(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          18,
                                                                    )),
                                                                value:
                                                                    "Oldest"),
                                                          ],
                                                          onChanged:
                                                              (String? value) =>
                                                                  setState(() {
                                                            _dateValue =
                                                                value ?? "";
                                                          }),
                                                          underline:
                                                              Container(),
                                                          iconEnabledColor:
                                                              Colors.white,
                                                          dropdownColor:
                                                              Color.fromRGBO(67,
                                                                  67, 67, 1),
                                                        ),
                                                      ),
                                                    ),
                                                    Spacer(),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  Color.fromRGBO(27, 26, 26, 1),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Total Reviews:23',
                                                        style: TextStyle(
                                                          color: Colors.white
                                                              .withOpacity(0.6),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Divider(
                                                        color: Colors.white
                                                            .withOpacity(0.5),
                                                      ),
                                                      SizedBox(
                                                        height: 15,
                                                      ),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
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
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                child: Text(
                                                                    'Service SRL',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white)),
                                                              ),
                                                              Text(
                                                                '3.55',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              )
                                                            ],
                                                          ),
                                                          Spacer(),
                                                          Expanded(
                                                            flex: 5,
                                                            child: Container(
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  RatingBar.builder(
                                                                      initialRating: 3,
                                                                      ignoreGestures: true,
                                                                      minRating: 1,
                                                                      direction: Axis.horizontal,
                                                                      allowHalfRating: true,
                                                                      itemCount: 5,
                                                                      itemSize: 30,
                                                                      itemPadding: const EdgeInsets.symmetric(
                                                                        horizontal:
                                                                            1,
                                                                      ),
                                                                      itemBuilder: (context, _) => const Icon(
                                                                            Icons.star,
                                                                            color: Color.fromRGBO(
                                                                                221,
                                                                                182,
                                                                                95,
                                                                                1),
                                                                          ),
                                                                      onRatingUpdate: (rating) {
                                                                        print(
                                                                            rating);
                                                                      }),
                                                                  Text(
                                                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            18),
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
                                                        color: Colors.white
                                                            .withOpacity(0.5),
                                                      ),
                                                      SizedBox(
                                                        height: 15,
                                                      ),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
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
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                child: Text(
                                                                    'Service SRL',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white)),
                                                              ),
                                                              Text(
                                                                '3.55',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
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
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  RatingBar.builder(
                                                                      initialRating: 3,
                                                                      ignoreGestures: true,
                                                                      minRating: 1,
                                                                      direction: Axis.horizontal,
                                                                      allowHalfRating: true,
                                                                      itemCount: 5,
                                                                      itemSize: 30,
                                                                      itemPadding: const EdgeInsets.symmetric(
                                                                        horizontal:
                                                                            1,
                                                                      ),
                                                                      itemBuilder: (context, _) => const Icon(
                                                                            Icons.star,
                                                                            color: Color.fromRGBO(
                                                                                221,
                                                                                182,
                                                                                95,
                                                                                1),
                                                                          ),
                                                                      onRatingUpdate: (rating) {
                                                                        print(
                                                                            rating);
                                                                      }),
                                                                  Text(
                                                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            18),
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
                                                        color: Colors.white
                                                            .withOpacity(0.5),
                                                      ),
                                                      SizedBox(
                                                        height: 15,
                                                      ),
                                                    ]),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                    ),
                                  ]),
                            )),
                        Spacer(
                          flex: 2,
                        )
                      ],
                    ),
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
