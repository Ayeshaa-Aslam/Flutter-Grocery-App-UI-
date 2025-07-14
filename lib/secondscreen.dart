import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
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
                  SizedBox(width: 50),
                  Text(
                    'Track Order',
                    style: TextStyle(fontSize: 23.0),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              child: Image.asset(
                'images/map.gif',
                width: 220,
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Icon(
                    Icons.watch_later_outlined,
                    color: Colors.grey,
                    size: 25.0,
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivery in",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Text(
                      "25 Min",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Icon(
                    Icons.location_on,
                    color: Colors.grey,
                    size: 25.0,
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivery Address",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Text(
                      "37 New line, Sunamganj",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: Container(
            height: 60.0,
            color: Color(0xFFE5E3E3),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(3, (index) {
                    return Container(
                      width: 100.0,
                      height: double.infinity,
                      color: Colors.transparent,
                    );
                  }),
                ),
                Positioned(
                  top: 8,
                  child: Container(
                    width: 110,
                    height: 5,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 25),
                  child: Row(
                    children: [
                      Text("Order Details", style: TextStyle(color: Colors.black,fontSize: 17, fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Text("(ID: #765433)", style: TextStyle(color: Colors.black54,fontSize: 17),),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
