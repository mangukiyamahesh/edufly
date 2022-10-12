import 'package:edufly/view/otp_screen.dart';
import 'package:edufly/view/social_media_sign_up_page.dart';
import 'package:flutter/material.dart';

import '../animated_page_selector.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  PageController pageController = PageController();
  int select = 0;

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);

    super.initState();
  }

  Curve curve = Curves.easeOutQuint;
  Duration duration = Duration(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: height * 0.73,
                  child: PageView(
                    physics: BouncingScrollPhysics(),
                    controller: pageController,
                    onPageChanged: (value) {
                      setState(
                        () {
                          select = value;
                          _tabController.animateTo(value,
                              curve: curve, duration: duration);
                        },
                      );
                    },
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: height * 0.1,
                          ),
                          Image.asset('assets/images/image1.png'),
                          SizedBox(
                            height: height * 0.07,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            'Welcome to edufly\nschool ebooks store',
                            style: TextStyle(
                              color: Color(0xff1136D2),
                              fontSize: height * 0.03,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            'Explore education ebooks\nat edufly app',
                            style: TextStyle(
                              color: Color(0xff797979),
                              fontSize: height * 0.021,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: height * 0.1,
                          ),
                          Image.asset('assets/images/image2.png'),
                          SizedBox(
                            height: height * 0.07,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            "Find out about your\nChildren's ebook in click",
                            style: TextStyle(
                              color: Color(0xff1136D2),
                              fontSize: height * 0.03,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            'Choosing the right books\nat one place',
                            style: TextStyle(
                              color: Color(0xff797979),
                              fontSize: height * 0.021,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: height * 0.1,
                          ),
                          Image.asset('assets/images/image3.png'),
                          SizedBox(
                            height: height * 0.07,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            'The edufly eBooks Store\noffers you millions',
                            style: TextStyle(
                              color: Color(0xff1136D2),
                              fontSize: height * 0.03,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            "Millions of titles across categories\nlike children's book",
                            style: TextStyle(
                              color: Color(0xff797979),
                              fontSize: height * 0.021,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: width * 0.00,
                  right: width * 0.00,
                  bottom: height * 0.02,
                  child: AnimatedPageSelector(
                    height: 10,
                    width: 35,
                    tabController: _tabController,
                    duration: duration,
                    borderColor: Colors.deepPurple,
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Container(
                height: height * 0.27,
                width: height * 0.5,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff1132d9),
                      Color(0xff02f993),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Container(
                      height: height * 0.065,
                      width: height * 0.4,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffC3D9F5),
                        ),
                        borderRadius: BorderRadius.circular(height * 0.005),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                        child: Row(
                          children: [
                            Text(
                              "+1",
                              style: TextStyle(color: Colors.white),
                            ),
                            VerticalDivider(
                              endIndent: height * 0.01,
                              indent: height * 0.01,
                              color: Color(0xffFFFFFF),
                            ),
                            Expanded(
                              child: TextField(
                                maxLength: 10,
                                style: TextStyle(color: Colors.white),
                                keyboardType: TextInputType.number,
                                onTap: () {},
                                cursorColor: Colors.white,
                                decoration: InputDecoration(
                                  counterText: '',
                                  border: InputBorder.none,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OTPScreen(),
                              ),
                            );
                          },
                        );
                      },
                      color: Color(0xffFFFFFF),
                      height: height * 0.062,
                      minWidth: width * 0.85,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(height * 0.005),
                      ),
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: height * 0.02,
                          color: Color(0xff3A58F5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SMSignUpPage(),
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        'Sign up with email/Social media',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
