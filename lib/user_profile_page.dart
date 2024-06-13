
import "package:disaster_management_app_final/main.dart";
import "package:disaster_management_app_final/medical_information.dart";
import "package:disaster_management_app_final/user_disaster_news.dart";
import "package:disaster_management_app_final/user_feedback_form.dart";
import "package:disaster_management_app_final/user_home_page.dart";
import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(home: userprofilePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class userprofilePage extends StatelessWidget {
  const userprofilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 90),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.account_circle,
                              size: 80,
                              color: Colors.green,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            // Row(
                            //   children: [
                            //     Text(
                            //       "Ankit Sharma",
                            //       style: TextStyle(
                            //         color: Colors.white,
                            //         fontSize: 18,
                            //       ),
                            //     )
                            //   ],
                            // ),
                            // Row(
                            //   children: [
                            //     Text(
                            //       "+919028966112",
                            //       style: TextStyle(
                            //         color: Colors.white,
                            //         fontSize: 16,
                            //       ),
                            //     )
                            //   ],
                            // ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "Emergency info",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => medicalInformation())
                        );
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.info,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Medical information",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15
                            ),
                          ),
                        ],
                      ),style: ElevatedButton.styleFrom(
                      fixedSize: Size(320, 50),
                    ),),
                  ]),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.contacts,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Emergency Contacts",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15
                              ),
                            ),
                          ],
                        ),style: ElevatedButton.styleFrom(
                        fixedSize: Size(320, 50),
                      ),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.lock,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Privacy & Policies",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15
                              ),
                            ),
                          ],
                        ),style: ElevatedButton.styleFrom(
                        fixedSize: Size(320, 50),
                      ),)
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "Help & Support",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.question_mark,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Help",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15
                              ),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(320, 50),
                        ),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          showDialog(context: context, builder: (context) => const FeedbackDialog());
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.feedback,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Send Feedback",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15
                              ),
                            ),
                          ],
                        ),style: ElevatedButton.styleFrom(
                        fixedSize: Size(320, 50),
                      ),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FirstPage(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.logout,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Logout",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15
                              ),
                            ),
                          ],
                        ),style: ElevatedButton.styleFrom(
                        fixedSize: Size(320, 50),
                      ),)
                    ],
                  ),
                ],
              ),
            ),  //Name Field Till footer




            Padding(
              padding: const EdgeInsets.only(top: 780),
              child: Container(
                height: 90,
                width: 410,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => userhomePage(),),
                            );
                          },
                          icon: Icon(Icons.home),
                          iconSize: 25,
                          color: Colors.orange,
                        ),
                        Text('Home'),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => disasterNews(),),
                            );
                          },
                          icon: Icon(Icons.newspaper),
                          iconSize: 25,
                          color: Colors.orange,
                        ),
                        Text('News'),
                      ],
                    ),
                    // Column(
                    //   children: [
                    //     IconButton(
                    //       onPressed: () {
                    //         // Icon button onPressed logic
                    //       },
                    //       icon: Icon(Icons.add_location),
                    //       iconSize: 25,
                    //       color: Colors.orange,
                    //     ),
                    //     Text('Contribute'),
                    //   ],
                    // ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>userprofilePage(),),
                            );

                          },
                          icon: Icon(Icons.person),
                          iconSize: 25,
                          color: Colors.orange,
                        ),
                        Text('Profile'),
                      ],
                    ),

                    // Spacer between the icon button and text

                  ],
                ),
              ),
            ),//Footer
          ],






        )),
    );
  }
}