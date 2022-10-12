import 'package:flutter/material.dart';

class SMSignUpPage extends StatefulWidget {
  const SMSignUpPage({Key? key}) : super(key: key);

  @override
  State<SMSignUpPage> createState() => _SMSignUpPageState();
}

class _SMSignUpPageState extends State<SMSignUpPage> {
  List<Map<String, dynamic>> list = [
    {
      'color': Color(0xff4267B2),
      'image': 'assets/images/google.png',
      'text': 'CONTINUE WITH GOOGLE'
    },
    {
      'color': Color(0xff4267B2),
      'image': 'assets/images/apple.png',
      'text': 'CONTINUE WITH APPLE'
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkResponse(
                    onTap: () {
                      setState(
                        () {
                          Navigator.pop(context);
                        },
                      );
                    },
                    child: CircleAvatar(
                      radius: height * 0.02,
                      backgroundColor: Color(0xff51526E),
                      child: Image.asset(
                        'assets/images/cross.png',
                        height: height * 0.018,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.17,
              ),
              Center(
                child: Text(
                  'edufly',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    foreground: Paint()
                      ..shader = LinearGradient(colors: [
                        Color(0xff02f993),
                        Color(0xff1132d9),
                      ]).createShader(
                        Rect.fromLTWH(120, 70, 200, 50),
                      ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Text(
                'Sign up with social media',
                style: TextStyle(
                  fontSize: height * 0.022,
                  color: Color(0xff1D2952),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              MaterialButton(
                onPressed: () {},
                height: height * 0.07,
                minWidth: double.infinity,
                color: Color(0xff4267B2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(height * 0.007),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.08,
                    ),
                    Image.asset(
                      'assets/images/facebook.png',
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Text(
                      'CONTINUE WITH FACEBOOK',
                      style: TextStyle(
                          color: Color(0xffFFFFFF), fontSize: height * 0.02),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              MaterialButton(
                onPressed: () {},
                height: height * 0.07,
                minWidth: double.infinity,
                color: Color(0xff679EF5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(height * 0.007),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.08,
                    ),
                    Image.asset(
                      'assets/images/google.png',
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Text(
                      'CONTINUE WITH GOOGLE',
                      style: TextStyle(
                          color: Color(0xffFFFFFF), fontSize: height * 0.02),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              MaterialButton(
                onPressed: () {},
                height: height * 0.07,
                minWidth: double.infinity,
                color: Color(0xff29303F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(height * 0.007),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.08,
                    ),
                    Image.asset(
                      'assets/images/apple.png',
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Text(
                      'CONTINUE WITH APPLE',
                      style: TextStyle(
                          color: Color(0xffFFFFFF), fontSize: height * 0.02),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
