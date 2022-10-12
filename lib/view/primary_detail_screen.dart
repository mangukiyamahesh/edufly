import 'package:edufly/view/order_success.dart';
import 'package:flutter/material.dart';

class PrimaryScreen extends StatefulWidget {
  const PrimaryScreen({Key? key}) : super(key: key);

  @override
  State<PrimaryScreen> createState() => _PrimaryScreenState();
}

class _PrimaryScreenState extends State<PrimaryScreen> {
  List<Map<String, dynamic>> list = [
    {
      'image': 'assets/images/book1.png',
      'name': 'Lower Primary Level 1',
      'text': 'Paperback - 1',
      'author': 'By None (Author)',
      'price': '₹ 660.00'
    },
    {
      'image': 'assets/images/book2.png',
      'name': 'Lower Primary Level 1',
      'text': 'Paperback - 1',
      'author': 'By None (Author)',
      'price': '₹ 660.00'
    },
    {
      'image': 'assets/images/book3.png',
      'name': 'Lower Primary Level 1',
      'text': 'Paperback - 1',
      'author': 'By None (Author)',
      'price': '₹ 660.00'
    },
    {
      'image': 'assets/images/book4.png',
      'name': 'Lower Primary Level 1',
      'text': 'Paperback - 1',
      'author': 'By None (Author)',
      'price': '₹ 660.00'
    },
    {
      'image': 'assets/images/book5.png',
      'name': 'Lower Primary Level 1',
      'text': 'Paperback - 1',
      'author': 'By None (Author)',
      'price': '₹ 660.00'
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.19,
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lower Primary',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.025,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: height * 0.045,
                        )
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
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OrderSuccess(),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    height: height * 0.17,
                    width: height * 0.45,
                    margin: EdgeInsets.symmetric(
                        vertical: height * 0.01, horizontal: width * 0.0275),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xffE4E1F7), width: height * 0.0005),
                      borderRadius: BorderRadius.circular(height * 0.01),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                      child: Row(
                        children: [
                          Image.asset(
                            list[index]['image'],
                            height: height * 0.115,
                          ),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.04),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  list[index]['name'],
                                  style: TextStyle(
                                      fontSize: height * 0.021,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: height * 0.015,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          list[index]['text'],
                                        ),
                                        SizedBox(
                                          height: height * 0.005,
                                        ),
                                        Row(
                                          children: List.generate(
                                            5,
                                            (index) => Icon(Icons.star,
                                                color: index == 4
                                                    ? Color(0xffE4E1F7)
                                                    : Color(0xffFFC107)),
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.005,
                                        ),
                                        Text(
                                          list[index]['author'],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: width * 0.108,
                                    ),
                                    Text(
                                      list[index]['price'],
                                      style: TextStyle(
                                          color: Color(0xff0E2ED3),
                                          fontSize: height * 0.02,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
