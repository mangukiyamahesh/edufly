import 'package:edufly/view/signin_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool select = false;
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
                'Sign Up',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: height * 0.04,
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              TextField(
                onTap: () {},
                cursorColor: Color(0xff0CDBB1),
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.done,
                    color: Color(0xff0CDBB1),
                  ),
                  hintText: 'Name',
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
              TextField(
                onTap: () {},
                cursorColor: Color(0xff0CDBB1),
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.done,
                    color: Color(0xff0CDBB1),
                  ),
                  hintText: 'Email',
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
              TextField(
                onTap: () {},
                cursorColor: Color(0xff0CDBB1),
                decoration: InputDecoration(
                  hintText: 'Create Password',
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
                height: height * 0.05,
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
                          builder: (context) => SignInScreen(),
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
                  'Register',
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
                    "You have an account?",
                    style: TextStyle(color: Color(0xff7483A0)),
                  ),
                  InkResponse(
                    onTap: () {
                      setState(
                        () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInScreen(),
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      " Sign In",
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
