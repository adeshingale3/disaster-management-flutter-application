import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class sendAlertPage extends StatefulWidget {
  const sendAlertPage({super.key});

  @override
  State<sendAlertPage> createState() => _sendAlertPageState();
}

class _sendAlertPageState extends State<sendAlertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 125 , top: 50),
                child: Text('Send Alert',
                  style: TextStyle(
                      fontSize: 30 , color: Colors.white , fontWeight:FontWeight.w500
                  ),),
              ),
            ],
          ),




          Padding(
            padding: const EdgeInsets.only(left: 30 , top: 150),
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Text('Select Disaster type and Send Alert' ,
                        style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w700 , color: Colors.white),),
                    ),


                    SizedBox(height: 30,),
                    Link(uri: Uri.parse('http://surl.li/sorcj'),
                      builder: (context , followLink) => Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: ElevatedButton(
                            onPressed: followLink,
                            child: Row(
                              children: [
                                Text('Fire Brigade' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w400 , color: Colors.black),), // Button text// Spacer between text and icon
                                SizedBox(width: 0),
                                Icon(Icons.arrow_right, color: Colors.black , size: 40,), // Filled arrow icon
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(400, 60),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )
                            )
                        ),
                      ),
                    ),//Fire Brigade

                    SizedBox(height: 20,),
                    Link(uri: Uri.parse('http://surl.li/sordo'),
                      builder: (context , followLink) => Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: ElevatedButton(
                            onPressed: followLink,
                            child: Row(
                              children: [
                                Text('Flood' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w400 , color: Colors.black),), // Button text// Spacer between text and icon
                                SizedBox(width: 0),
                                Icon(Icons.arrow_right, color: Colors.black , size: 40,), // Filled arrow icon
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(400, 60),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )
                            )
                        ),
                      ),
                    ),//Flood

                    SizedBox(height: 20,),
                    Link(uri: Uri.parse('http://surl.li/sorgf'),
                      builder: (context , followLink) => Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: ElevatedButton(
                            onPressed: followLink,
                            child: Row(
                              children: [
                                Text('LandSlide' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w400 , color: Colors.black),), // Button text// Spacer between text and icon
                                SizedBox(width: 0),
                                Icon(Icons.arrow_right, color: Colors.black , size: 40,), // Filled arrow icon
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(400, 60),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )
                            )
                        ),
                      ),
                    ), //LandSlide

                    SizedBox(height: 20,),
                    Link(uri: Uri.parse('http://surl.li/sorgr'),
                      builder: (context , followLink) => Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: ElevatedButton(
                            onPressed: followLink,
                            child: Row(
                              children: [
                                Text('Earthquake' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w400 , color: Colors.black),), // Button text// Spacer between text and icon
                                SizedBox(width: 0),
                                Icon(Icons.arrow_right, color: Colors.black , size: 40,), // Filled arrow icon
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(400, 60),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )
                            )
                        ),
                      ),
                    ),//Earthquake

                    SizedBox(height: 20,),
                    Link(uri: Uri.parse(''),
                      builder: (context , followLink) => Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: ElevatedButton(
                            onPressed: followLink,
                            child: Row(
                              children: [
                                Text('Cyclone' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w400 , color: Colors.black),), // Button text// Spacer between text and icon
                                SizedBox(width: 0),
                                Icon(Icons.arrow_right, color: Colors.black , size: 40,), // Filled arrow icon
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(400, 60),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )
                            )
                        ),
                      ),
                    ),//Cyclone
                  ],


                ),

              ],
            ),
          ),


        ],
      ),
    );
  }
}
