// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewArrivals extends StatelessWidget {
  const NewArrivals({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       // extendBodyBehindAppBar: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: Text('New arrivals'),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.black,)),
          actions: [
            Spacer(),
            Icon(Icons.more_vert,color: Colors.black,)
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                book('assets/images/image1.jpeg'),
                SizedBox(height: 23.45,),
                book('assets/images/image2.jpeg'),
                SizedBox(height: 23.45,),
                book('assets/images/image3.jpeg'),
                SizedBox(height: 23.45,),
                book('assets/images/image4.jpeg'),
                SizedBox(height: 23.45,),
                book('assets/images/image5.jpeg'),
                SizedBox(height: 23.45,),
                book('assets/images/image6.jpeg'),
                SizedBox(height: 23.45,),
                book('assets/images/image1.jpeg'),
                book('assets/images/image2.jpeg'),
                SizedBox(height: 23.45,),
                book('assets/images/image3.jpeg'),
                SizedBox(height: 23.45,),
                book('assets/images/image4.jpeg'),
                SizedBox(height: 23.45,),
                book('assets/images/image5.jpeg'),
                SizedBox(height: 23.45,),
                book('assets/images/image6.jpeg'),
                SizedBox(height: 23.45,),
                book('assets/images/image1.jpeg'),
                SizedBox(height: 23.45,),
                book('assets/images/image2.jpeg'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row book(String text) {
    return Row(
                children: [
                  Image(image: AssetImage(text),width: 75,height: 105,),
                  SizedBox(width: 28,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Harry Potter',style: GoogleFonts.poppins(fontSize: 16,color: Colors.black),),
                      SizedBox(height:4),
                      Text('J K Rowling',style: GoogleFonts.poppins(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w500),),
                      SizedBox(height:22),
                      RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          unratedColor: Color.fromARGB(255, 162, 162, 162),
                          itemSize: 20,
                          itemCount: 5,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.bookmark_border_outlined),
                ],
              );
  }
}