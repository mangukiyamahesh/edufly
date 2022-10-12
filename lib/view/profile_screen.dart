import 'package:flutter/material.dart';

import 'edit_account_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.35,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff61D9FF),
                  Color(0xff3a58f5),
                  Color(0xff3a58f5),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Column(
              children: [
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkResponse(
                          onTap: () {
                            setState(
                              () {
                                Navigator.pop(context);
                              },
                            );
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'My Account',
                          style: TextStyle(
                              color: Colors.white, fontSize: height * 0.022),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => EditScreen(),
                                    ));
                              },
                            );
                          },
                          child: Text(
                            'Edit',
                            style: TextStyle(
                                color: Colors.white, fontSize: height * 0.022),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Image.asset(
                  'assets/images/profile.png',
                ),
                SizedBox(
                  height: height * 0.035,
                ),
                Text(
                  'Mahesh Mangukiya',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: height * 0.02,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Phone Number',
                      style: TextStyle(
                          color: Color(0xff878787),
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.02),
                    ),
                    Text(
                      '97120 23220',
                      style: TextStyle(
                          color: Color(0xff1F2E43),
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.02),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Text(
                  'INFORMATION',
                  style: TextStyle(
                      color: Color(0xff4749A0),
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.02),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                          color: Color(0xff878787),
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.02),
                    ),
                    Text(
                      'Mahesh Mangukiya ',
                      style: TextStyle(
                          color: Color(0xff1F2E43),
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.02),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Divider(
                  color: Color(0xffBAC2DA),
                  thickness: height * 0.0003,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Parents Mobile',
                      style: TextStyle(
                          color: Color(0xff878787),
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.02),
                    ),
                    Text(
                      '+91 - 9723286283',
                      style: TextStyle(
                          color: Color(0xff1F2E43),
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.02),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Divider(
                  color: Color(0xffBAC2DA),
                  thickness: height * 0.0003,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(
                          color: Color(0xff878787),
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.02),
                    ),
                    Text(
                      '+91 - 8306833989',
                      style: TextStyle(
                          color: Color(0xff1F2E43),
                          fontWeight: FontWeight.w500,
                          fontSize: height * 0.02),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Divider(
                  color: Color(0xffBAC2DA),
                  thickness: height * 0.0003,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
