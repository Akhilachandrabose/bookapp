import 'package:bookapp/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'NewArrivals.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  var height, width, size;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              height: height / 1.1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "20",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 38,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            child: Text(
                              "Thu",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: Text(
                              "Feb 2020",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width / 1.12,
                      ),
                      Container(
                        child: Icon(
                          Icons.qr_code,
                          size: 35,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'assets/images/meepic.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  VerticalSpacing(38),
                  Container(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 28),
                        child: Row(children: [
                          Text(
                            'New Arrivals',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NewArrivals()));
                            },
                            child: Text(
                              'View all >',
                              style: TextStyle(color: Colors.amber),
                            ),
                          )
                        ])),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        book('assets/images/image1.jpeg'),
                        SizedBox(
                        width: 23.45,
                        ),
                        book('assets/images/image2.jpeg'),
                        SizedBox(
                          width: 23.45,
                        ),
                        book('assets/images/image3.jpeg'),
                        SizedBox(
                          width: 23.45,
                        ),
                        book('assets/images/image4.jpeg'),
                        SizedBox(
                          width: 23.45,
                        ),
                        book('assets/images/image5.jpeg'),
                        SizedBox(
                          width: 23.45,
                        ),
                        book('assets/images/image6.jpeg'),
                        SizedBox(
                          width: 23.45,
                        ),
                        book('assets/images/image1.jpeg'),
                        SizedBox(
                          width: 23.45,
                        ),
                        book('assets/images/image2.jpeg'),
                        SizedBox(
                          width: 23.45,
                        ),
                        book('assets/images/image3.jpeg'),
                        SizedBox(
                          width: 23.45,
                        ),
                        book('assets/images/image4.jpeg'),
                        SizedBox(
                          width: 23.45,
                        ),
                        book('assets/images/image5.jpeg'),
                        SizedBox(
                          width: 23.45,
                        ),
                        book('assets/images/image6.jpeg'),
                        SizedBox(
                          width: 23.45,
                        ),
                        book('assets/images/image1.jpeg'),
                        SizedBox(
                          width: 23.45,
                        ),
                        book('assets/images/image2.jpeg'),
                        SizedBox(
                          width: 23.45,
                        ),
                        book('assets/images/image3.jpeg'),
                        SizedBox(
                          width: 23.45,
                        ),
                        book('assets/images/image4.jpeg'),
                        SizedBox(
                          width: 23.45,
                        ),
                        book('assets/images/image5.jpeg'),
                        SizedBox(
                          width: 23.45,
                        ),
                        book('assets/images/image6.jpeg'),
                        SizedBox(
                          width: 23.45,
                        ),
                        book('assets/images/image1.jpeg'),
                        SizedBox(
                          width: 23.45,
                        ),
                        book('assets/images/image2.jpeg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.home,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontStyle: FontStyle.normal),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.search,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontStyle: FontStyle.normal),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.library_add,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          "Library",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontStyle: FontStyle.normal),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.shopping_bag,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          "Cart",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontStyle: FontStyle.normal),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column book(String text) {
    return Column(
      children: [
        VerticalSpacing(40),
        Container(
          width: 130,
          height: 190,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(image: AssetImage(text))),
        ),
        VerticalSpacing(18),
        Text(
          'Harry Potter',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        VerticalSpacing(6),
        Text(
          'J.K.Rowling',
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),
        )
      ],
    );
  }
}
