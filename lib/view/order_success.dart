import 'package:edufly/view/bottom_nav_screen.dart';
import 'package:flutter/material.dart';

class OrderSuccess extends StatefulWidget {
  const OrderSuccess({Key? key}) : super(key: key);

  @override
  State<OrderSuccess> createState() => _OrderSuccessState();
}

class _OrderSuccessState extends State<OrderSuccess> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.38,
          ),
          Center(
            child: CircleAvatar(
              radius: height * 0.055,
              backgroundColor: Color(0xff3A58F5),
              child: Icon(
                Icons.done_sharp,
                color: Colors.white,
                size: height * 0.06,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            'Order Success',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: height * 0.03,
                color: Color(0xff3A58F5)),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            '  Thanks for the payment\noue executive will call you\n     for the confirmation',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                height: height * 0.0016,
                fontSize: height * 0.022,
                color: Color(0xff000000)),
          ),
          SizedBox(
            height: height * 0.27,
          ),
          MaterialButton(
            onPressed: () {
              setState(
                () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavScreen(),
                    ),
                  );
                },
              );
            },
            height: height * 0.07,
            minWidth: width * 0.88,
            color: Color(0xff3A58F5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(height * 0.008),
            ),
            child: Text(
              'Back to home',
              style: TextStyle(
                color: Colors.white,
                fontSize: height * 0.02,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
