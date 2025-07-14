import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task/secondscreen.dart';
class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () =>
            Navigator.pushReplacement(context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Second())));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        margin: EdgeInsets.only(left: 25),
                        decoration: BoxDecoration(
                          color: Color(0xFFE5E3E3),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 13.0,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.shopping_bag,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Thin Choice",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                  ),
                ),
                Text(
                  "Top Orange",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Row(
                      children: List.generate(5, (index) {
                        return Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          size: 20.0,
                        );
                      }),
                    ),
                    SizedBox(width: 10), // Space between stars and text
                    Text(
                      "110 Reviews",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage('images/joy-lemon.png'),
                      width: 160,
                    ),
                    SizedBox(width: 100),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 120,
                      width: 60,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.favorite_border,
                            size: 30,
                            color: Colors.black,
                          ),
                          SizedBox(height: 40),
                          Image(
                            image: AssetImage('images/dot.png',),
                            width: 20,)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text("\$34.70", style: TextStyle(
                        color: Color(0xFF152A8C), fontWeight: FontWeight.bold,
                        fontSize: 18)),
                    Text("/KG",
                      style: TextStyle(color: Color(0xFF152A8C), fontSize: 18),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 35,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xFF152A8C),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Text("\$22.04OFF",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                    SizedBox(width: 30),
                    Text("Reg:\$56.70 USD", style: TextStyle(color: Colors.grey,
                        fontSize: 11)),

                  ],

                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 12, left: 20),
                      height: 40,
                      width: 120,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Color(0xFF152A8C),
                          )
                      ),
                      child: TextButton(onPressed: () {},
                          child: Text("Add To cart", style: TextStyle(
                              color: Color(0xFF152A8C),
                              fontSize: 12),)
                      ),
                    ),

                    SizedBox(width: 10,),
                    Container(
                      margin: EdgeInsets.only(top: 12, left: 20),
                      height: 40,
                      width: 120,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Color(0xFF152A8C),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Color(0xFF152A8C),
                          )
                      ),
                      child: TextButton(onPressed: () {},
                          child: Text("Buy Now", style: TextStyle(color: Colors
                              .white,
                              fontSize: 12),)
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Details", style: TextStyle(color: Colors.black,
                        fontSize: 17),),
                    SizedBox(height: 10,),
                    Text("Praesent commodo cursus magna, vel.\n"
                        "scelerisque nisl consectetur et. Nullam quis\n"
                        "risus eget urna mollis ornars vel eu leo.\n",
                      style: TextStyle(color: Colors.grey,
                          fontSize: 15),),
                    // SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Nutritional facts", style: TextStyle(color: Colors
                            .black,
                            fontSize: 17),),
                        Spacer(),
                        Icon(Icons.arrow_drop_down_sharp,
                          color: Colors.grey, size: 30,)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text("Praesent commodo cursus magna, vel.\n"
                        "scelerisque nisl consectetur et. Nullam quis\n"
                        "risus eget urna mollis ornars vel eu leo.\n",
                      style: TextStyle(color: Colors.grey,
                          fontSize: 15),),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
