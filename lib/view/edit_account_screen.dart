import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
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
                  Color(0xff87F2D5),
                  Color(0xff1132d9),
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
                        GestureDetector(
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
                          'Edit Account',
                          style: TextStyle(
                              color: Colors.white, fontSize: height * 0.022),
                        ),
                        Text(
                          'Edit',
                          style: TextStyle(
                              color: Colors.white, fontSize: height * 0.022),
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
                  'Change Photo',
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
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PERSONAL INFO',
                      style: TextStyle(
                          color: Color(0xff4749A0),
                          fontWeight: FontWeight.w400,
                          fontSize: height * 0.021),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    TextField(
                      onTap: () {},
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: height * 0.0005,
                            color: Color(0xffBAC2DA),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: height * 0.002,
                            color: Color(0xffF47D31),
                          ),
                        ),
                        label: Text(
                          'First Name',
                          style: TextStyle(
                            color: Color(0xff636DEA),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    TextField(
                      onTap: () {},
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: height * 0.0005,
                            color: Color(0xffBAC2DA),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: height * 0.002,
                            color: Color(0xffF47D31),
                          ),
                        ),
                        label: Text(
                          'Last Name',
                          style: TextStyle(
                            color: Color(0xff606060),
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      onTap: () {},
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: height * 0.0005,
                            color: Color(0xffBAC2DA),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: height * 0.002,
                            color: Color(0xffF47D31),
                          ),
                        ),
                        label: Text(
                          'Date of Birth',
                          style: TextStyle(
                            color: Color(0xff606060),
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      onTap: () {},
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      maxLength: 10,
                      decoration: InputDecoration(
                        counterText: '',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: height * 0.0005,
                            color: Color(0xffBAC2DA),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: height * 0.002,
                            color: Color(0xffF47D31),
                          ),
                        ),
                        label: Text(
                          'Mobile',
                          style: TextStyle(
                            color: Color(0xff606060),
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      onTap: () {},
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: height * 0.0005,
                            color: Color(0xffBAC2DA),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: height * 0.002,
                            color: Color(0xffF47D31),
                          ),
                        ),
                        label: Text(
                          'Home',
                          style: TextStyle(
                            color: Color(0xff606060),
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      onTap: () {},
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: height * 0.0005,
                            color: Color(0xffBAC2DA),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: height * 0.002,
                            color: Color(0xffF47D31),
                          ),
                        ),
                        label: Text(
                          'Work',
                          style: TextStyle(
                            color: Color(0xff606060),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(
                      'ADDRESS',
                      style: TextStyle(
                          color: Color(0xff4749A0),
                          fontWeight: FontWeight.w400,
                          fontSize: height * 0.021),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    TextField(
                      onTap: () {},
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: height * 0.0005,
                            color: Color(0xffBAC2DA),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: height * 0.002,
                            color: Color(0xffF47D31),
                          ),
                        ),
                        label: Text(
                          'Street',
                          style: TextStyle(
                            color: Color(0xff606060),
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      onTap: () {},
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: height * 0.0005,
                            color: Color(0xffBAC2DA),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: height * 0.002,
                            color: Color(0xffF47D31),
                          ),
                        ),
                        label: Text(
                          'Town',
                          style: TextStyle(
                            color: Color(0xff606060),
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      onTap: () {},
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: height * 0.0005,
                            color: Color(0xffBAC2DA),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: height * 0.002,
                            color: Color(0xffF47D31),
                          ),
                        ),
                        label: Text(
                          'Zip Code',
                          style: TextStyle(
                            color: Color(0xff606060),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              setState(
                () {
                  Navigator.pop(context);
                },
              );
            },
            height: height * 0.056,
            minWidth: width * 0.9,
            color: Color(0xff3A58F5),
            child: Text(
              'SAVE',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
