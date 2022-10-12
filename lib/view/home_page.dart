import 'package:edufly/view/primary_detail_screen.dart';
import 'package:edufly/view/profile_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> list = [
    {
      'color': Color(0xffFFF3C7),
      'image': 'assets/images/image4.png',
      'name': 'LOWER PRIMARY'
    },
    {
      'color': Color(0xffFFE3F6),
      'image': 'assets/images/image5.png',
      'name': 'UPPER PRIMARY'
    },
    {
      'color': Color(0xffC6FAFF),
      'image': 'assets/images/image6.png',
      'name': 'HIGH SCHOOL'
    },
    {
      'color': Color(0xffCEE0FF),
      'image': 'assets/images/image7.png',
      'name': 'HIGHER SECONDARY'
    },
  ];
  final globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: globalKey,
      drawer: Drawer(
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: height * 0.05, horizontal: width * 0.04),
                child: Row(
                  children: [
                    Icon(
                      Icons.menu,
                      size: height * 0.04,
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      'Menu',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: height * 0.023,
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/images/profile.png',
                      height: height * 0.06,
                    ),
                    SizedBox(
                      width: width * 0.04,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Divider(
              thickness: height * 0.0002,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileScreen(),
                            ),
                          );
                        },
                      );
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.person,
                          size: height * 0.045,
                          color: Color(0xff4749A0),
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text(
                          'My Profile',
                          style: TextStyle(
                              fontSize: height * 0.02,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.lock,
                        size: height * 0.045,
                        color: Color(0xff4749A0),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text(
                        'Change Password',
                        style: TextStyle(
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.settings,
                        size: height * 0.045,
                        color: Color(0xff4749A0),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.book_outlined,
                        size: height * 0.045,
                        color: Color(0xff4749A0),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text(
                        'Terms & Condition',
                        style: TextStyle(
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.privacy_tip_outlined,
                        size: height * 0.045,
                        color: Color(0xff4749A0),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text(
                        'Privacy Policy',
                        style: TextStyle(
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Divider(
                    thickness: height * 0.001,
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.exit_to_app,
                        size: height * 0.045,
                        color: Color(0xffF26363),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text(
                        'Logout',
                        style: TextStyle(
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.15,
                  ),
                  Text(
                    'Powered by Firosnv',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: height * 0.02,
                      color: Color(0xff888888),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: height * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff61FFC5),
                      Color(0xff1132d9),
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                  child: Column(
                    children: [
                      SafeArea(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                globalKey.currentState!.openDrawer();
                              },
                              icon: Icon(
                                Icons.menu,
                                size: height * 0.04,
                                color: Colors.white,
                              ),
                            ),
                            Image.asset(
                              'assets/images/Study.png',
                              height: height * 0.06,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: height * 0.01),
                          prefixIcon: Icon(
                            Icons.search,
                            size: height * 0.04,
                            color: Color(0xffBDBDBD),
                          ),
                          hintText: 'Search ebooks',
                          hintStyle: TextStyle(
                            color: Color(0xffBDBDBD),
                          ),
                          suffixIcon: Icon(Icons.tune,
                              color: Color(0xffBDBDBD), size: height * 0.034),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(height * 0.01),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(height * 0.01),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: width * 0.02,
                bottom: height * -0.04,
                child: Container(
                  height: height * 0.24,
                  width: width * 0.96,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(height * 0.01),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.04, top: height * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'edufly',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: height * 0.04,
                                foreground: Paint()
                                  ..shader = LinearGradient(
                                    colors: [
                                      Color(0xff02f993),
                                      Color(0xff1132d9),
                                    ],
                                  ).createShader(
                                    Rect.fromLTWH(40, 20, 80, 10),
                                  ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              "Explore million's of\nSchool eBooks For\nall classes",
                              style: TextStyle(
                                  color: Color(0xff4D4D4D),
                                  height: height * 0.0017,
                                  fontSize: height * 0.021),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Container(
                              height: height * 0.045,
                              width: width * 0.26,
                              decoration: BoxDecoration(
                                color: Color(0xffD7E9FF),
                                borderRadius:
                                    BorderRadius.circular(height * 0.023),
                              ),
                              child: Center(
                                child: Text(
                                  'LEARN MORE',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: height * 0.012,
                                    color: Color(0xff194AD1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.07,
                      ),
                      Image.asset(
                        'assets/images/study_image.png',
                        width: width * 0.425,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 2,
                // mainAxisSpacing: height * 0.01,
                // crossAxisSpacing: height * 0.01,
              ),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        index == 0
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PrimaryScreen(),
                                ),
                              )
                            : SizedBox();
                      },
                    );
                  },
                  child: Container(
                    height: height * 0.1,
                    width: height * 0.1,
                    margin: EdgeInsets.symmetric(
                        horizontal: height * 0.008, vertical: height * 0.008),
                    decoration: BoxDecoration(
                      color: list[index]['color'],
                      borderRadius: BorderRadius.circular(height * 0.01),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          list[index]['image'],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Text(
                          list[index]['name'],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
