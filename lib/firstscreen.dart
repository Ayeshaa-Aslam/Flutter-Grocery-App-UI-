
import 'dart:async';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:task/thirdscreen.dart';
class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});
  @override
  State<Firstscreen> createState() => _FirstscreenState();
}
class _FirstscreenState extends State<Firstscreen> {
  @override
  void initState(){
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => Third())));
  }
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  color: Color(0xFF152A8C),
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60, left: 20),
                        child: Row(
                          children: [
                            Text("Hey, Halal", style: TextStyle(color: Colors.white, fontSize: 20,),),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 20 ),
                              child: Icon(Icons.shopping_bag, color: Colors.white,),),],),),
                      Container(
                        margin: EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 0.0),
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        decoration: BoxDecoration(
                          color: Color(0xFF061450),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            icon: Icon(Icons.search, color: Colors.white),
                            hintText: "Search Products or store",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                          ),),),

                      SizedBox(height: 40,),

                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text("DELIVERY TO", style: TextStyle(fontSize: 15, color: Colors.grey,),),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text("Green Way 3000, Sylhet", style: TextStyle(color: Colors.white,
                                        fontSize: 16),),
                                    SizedBox(width: 3,),
                                    Icon(Icons.arrow_drop_down, color: Colors.white70,),
                                  ],),)],),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text("WITHIN", style: TextStyle(fontSize: 12, color: Colors.grey,),),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text("1 Hour", style: TextStyle(color: Colors.white,
                                        fontSize: 14),),
                                    SizedBox(width: 3,),
                                    Icon(Icons.arrow_drop_down, color: Colors.white70,),
                                  ],),)],),],)],),),

                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        color: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.only(left: 16, right: 8),
                        child: Container(
                          width: 250,
                          height: 130,
                          child: Row(
                            children: [
                              Image(image: AssetImage('images/Noodle (1).png'), width: 120, height: 120,),
                              Container(
                                padding: EdgeInsets.only(left: 10, top: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Get", style: TextStyle(fontSize: 20, color: Colors.white),),
                                    Text("50% OFF", style: TextStyle(fontSize: 25, color: Colors.white,
                                        fontWeight: FontWeight.bold),),
                                    Text("On first 03 order", style: TextStyle(fontSize: 10, color: Colors.white),),
                                  ],),),],),),),
                      Card(
                        color: Colors.white54,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.only(right: 16),
                        child: Container(
                          width: 250,
                          height: 130,
                          child: Row(
                            children: [
                              Image(image: AssetImage('images/Noodle (2).png'), width: 100, height: 100,),
                              Container(
                                padding: EdgeInsets.only(left: 10, top: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Get", style: TextStyle(fontSize: 20, color: Colors.black54),),
                                    Text("50% OFF", style: TextStyle(fontSize: 25, color:  Colors.black54,
                                        fontWeight: FontWeight.bold),),
                                    Text("On first 03 order", style: TextStyle(fontSize: 10, color: Colors.black54),),
                                  ],),),],),),),],),
                ),
                SizedBox(height: 13,),

                Container(
                    margin: EdgeInsets.only(right: 180),
                    child: Text("Recommended", style: TextStyle(color: Colors.black, fontSize: 20,),)),

                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Container(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 140,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Image(image: AssetImage('images/joy-lemon.png',), width: 70, ),
                              Divider(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Fresh Lemon", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
                                      fontSize: 15),),
                                  Text("Organic", style: TextStyle(color: Colors.grey, fontSize: 13),),
                                ],
                              ),
                              ElevatedButton(onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text.rich(
                                        TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Unit',
                                                style: TextStyle(color: Colors.grey, fontSize: 14),
                                              ),
                                              TextSpan(
                                                text: '\$12',
                                                style: TextStyle(color: Colors.black, fontSize: 16,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ]
                                        )
                                    ),
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.amber,
                                      child: Icon(
                                        Icons.add,
                                        size: 16,
                                        color: Colors.white, // Icon color
                                      ),
                                    ),
                                  ],
                                ),
                              ),


                            ],
                          ),
                        ),
                        Container(
                            width: 140,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color:  Colors.white54,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                                children: [
                                  Image(image: AssetImage('images/Lem (3).png',), width: 70, ),
                                  Divider(),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start, children: [
                                    Text("Green tea", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
                                        fontSize: 15),),
                                    Text("Organic", style: TextStyle(color: Colors.grey, fontSize: 13),),
                                  ],
                                  ),

                                  ElevatedButton(onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text.rich(
                                            TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Unit',
                                                    style: TextStyle(color: Colors.grey, fontSize: 14),
                                                  ),
                                                  TextSpan(
                                                    text: '\$06',
                                                    style: TextStyle(color: Colors.black, fontSize: 16,
                                                        fontWeight: FontWeight.bold),
                                                  ),
                                                ]
                                            )
                                        ),
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.amber,
                                          child: Icon(
                                            Icons.add,
                                            size: 16,
                                            color: Colors.white, // Icon color
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]
                            )
                        ),

                        Container(
                          width: 140,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color:  Colors.white54,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                              children: [
                                Image(image: AssetImage('images/joy-lemon.png',), width: 70, ),
                                Divider(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start, children: [
                                  Text("Fresh Lemon", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
                                      fontSize: 15),),
                                  Text("Organic", style: TextStyle(color: Colors.grey, fontSize: 13),),
                                ],
                                ),
                                ElevatedButton(onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text.rich(
                                          TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Unit',
                                                  style: TextStyle(color: Colors.grey, fontSize: 14),
                                                ),
                                                TextSpan(
                                                  text: '\$12',
                                                  style: TextStyle(color: Colors.black, fontSize: 16,
                                                      fontWeight: FontWeight.bold),
                                                ),])),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.amber,
                                        child: Icon(
                                          Icons.add,
                                          size: 16,
                                          color: Colors.white, // Icon color
                                        ),),],),),]),)],),),),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                            width: 120,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Color(0xFFE1F5BB),
                                width: 2.0,
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  child: Image(image: AssetImage('images/Lem (1).png'),width: 90,),
                                ),
                              ],
                            )),
                        Container(
                            width: 120,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Color(0xFFE1F5BB), // Color of the border
                                width: 2.0, // Width of the border
                              ),

                            ),
                            child: Row(
                              children: [
                                Container(
                                  child: Image(image: AssetImage('images/Lem (3).png'),width: 90,   fit: BoxFit.cover,),
                                ),
                              ],
                            )
                        ),
                        Container(
                            width: 120,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Color(0xFFE1F5BB), // Color of the border
                                width: 2.0, // Width of the border
                              ),

                            ),
                            child: Row(
                              children: [
                                Container(
                                  child: Image(image: AssetImage('images/Lem (3).png'),width: 90,   fit: BoxFit.cover,),
                                ),],)),
                        Container(
                            width: 120,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Color(0xFFE1F5BB),
                                width: 2.0,
                              ),),
                            child: Row(
                                children: [
                                  Container(
                                    child: Image(image: AssetImage('images/Lem (2).png'),width: 90,   fit: BoxFit.cover,),
                                  ),])),],),),),
                Positioned(
                    child: CurvedNavigationBar(
                      backgroundColor: Colors.grey,
                      buttonBackgroundColor: Colors.black,
                      color: Colors.white54,
                      animationDuration: const Duration(milliseconds: 300),
                      items: <Widget>[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.home, size: 26, color: Colors.yellow, ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.kebab_dining, size: 26, color: Colors.yellow,),
                            Text('Categories', style: TextStyle(fontSize: 8)),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.favorite_outline, size: 26, color: Colors.yellow,),
                            Text('Favorites', style: TextStyle(fontSize: 8)),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.person_outline_outlined, size: 26, color: Colors.yellow,),
                            Text('Profile', style: TextStyle(fontSize: 8)),
                          ],),],),
                  ),]
          ),),),);}}




