import 'package:edufly/view/bottom_nav_screen.dart';
import 'package:edufly/view/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool select = false;

  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: InkResponse(
                  onTap: () {
                    setState(
                      () {
                        Navigator.pop(context);
                      },
                    );
                  },
                  child: CircleAvatar(
                    radius: height * 0.022,
                    backgroundColor: Color(0xff51526E),
                    child: Icon(
                      Icons.close,
                      size: height * 0.03,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                'Sign In',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: height * 0.04,
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                height: height * 0.065,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffEAF2FE),
                  border: Border.all(
                    color: Color(0xffC3D9F5),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                  child: Row(
                    children: [
                      Text(
                        '+1',
                        style: TextStyle(
                            color: Color(0xff090909),
                            fontSize: height * 0.024,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      VerticalDivider(
                        thickness: height * 0.0015,
                        color: Color(0xff090909),
                        indent: height * 0.01,
                        endIndent: height * 0.01,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: width * 0.04),
                          child: TextField(
                            maxLength: 10,
                            style: TextStyle(),
                            keyboardType: TextInputType.number,
                            onTap: () {},
                            cursorColor: Color(0xff0CDBB1),
                            decoration: InputDecoration(
                              counterText: '',
                              suffixIcon:
                                  Icon(Icons.done, color: Color(0xff0CDBB1)),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              TextField(
                onTap: () {},
                obscureText: true,
                cursorColor: Color(0xff0CDBB1),
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Color(0xffC3CCDB),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: height * 0.02),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffC3D9F5),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffC3D9F5),
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                children: [
                  SizedBox(
                    height: height * 0.032,
                    child: FittedBox(
                      child: CupertinoSwitch(
                          trackColor: Color(0xffBFBFBF),
                          value: select,
                          onChanged: (value) {
                            setState(
                              () {
                                select = value;
                              },
                            );
                          }),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Text(
                    'Remind me',
                    style: TextStyle(fontSize: height * 0.02),
                  ),
                  Spacer(),
                  Text(
                    'Forget Password?',
                    style: TextStyle(
                        fontSize: height * 0.02, color: Color(0xff33A6FF)),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              MaterialButton(
                height: height * 0.065,
                minWidth: double.infinity,
                onPressed: () {
                  setState(
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavScreen(),
                        ),
                      );
                    },
                  );
                },
                color: Color(0xff3A58F5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(height * 0.005),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: height * 0.021,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Color(0xff7483A0)),
                  ),
                  InkResponse(
                    onTap: () {
                      setState(
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      " Sign up",
                      style: TextStyle(
                          color: Color(0xff0546BD),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
