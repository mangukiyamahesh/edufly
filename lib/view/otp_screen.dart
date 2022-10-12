import 'package:edufly/view/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  Icons.arrow_circle_left_sharp,
                  size: height * 0.042,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: Text(
                  'Please enter the 4-digit code sent\nto you at +91-8943983474',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, height: height * 0.002),
                ),
              ),
              SizedBox(
                height: height * 0.08,
              ),
              OTPTextField(
                length: 4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: width * 0.165,
                contentPadding: EdgeInsets.symmetric(vertical: 20),
                style: const TextStyle(fontSize: 17, color: Colors.blue),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                otpFieldStyle: OtpFieldStyle(
                  borderColor: Color(0xffB5D0F3),
                  backgroundColor: Colors.blue.shade50,
                ),
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Center(
                child: Text(
                  'Resend code in 0:08',
                  style: TextStyle(
                    color: Color(0xff090909),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              MaterialButton(
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
                height: height * 0.06,
                minWidth: double.infinity,
                color: Color(0xff3A58F5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(height * 0.004),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.021),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              MaterialButton(
                onPressed: () {},
                height: height * 0.06,
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(height * 0.004),
                  side: BorderSide(
                      color: Color(0xffC3D9F5), width: height * 0.001),
                ),
                child: Text(
                  'Change Phone Number',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: height * 0.021),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
