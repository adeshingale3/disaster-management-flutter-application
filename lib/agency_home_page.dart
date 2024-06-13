
import 'package:disaster_management_app_final/agency_disaster_news.dart';
import 'package:disaster_management_app_final/agency_profile_page.dart';
import 'package:disaster_management_app_final/consts.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:weather/weather.dart';

void main(){
  runApp(agencyHomePage());
}


class agencyHomePage extends StatefulWidget {
  const agencyHomePage({super.key});

  @override
  State<agencyHomePage> createState() => _agencyHomePageState();
}

class _agencyHomePageState extends State<agencyHomePage> {
  final WeatherFactory _wf = WeatherFactory(OPENWEATHER_API_KEY);

  Weather? _weather;

  @override
  void initState() {
    _wf.currentWeatherByCityName("Kolhapur").then((w) {
      setState(() {
        _weather = w;
      });
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100 , top: 50),
                child: Text('Personal Saftey',
                  style: TextStyle(
                      fontSize: 25 , color: Colors.white
                  ),),
              ),
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50 , left: 10),
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.notifications , color: Colors.white, size: 30,),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 50),
              //   child: GestureDetector(
              //     onTap: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => userprofilePage(),
              //         ),
              //       );
              //     },
              //     child: CircleAvatar(
              //       radius: 15,
              //       backgroundColor: Colors.green,
              //       child: Text('A' , style: TextStyle(
              //           fontSize: 15
              //       ),),
              //
              //     ),
              //   ),
              // )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180),
            child: Container(
              // height: 50,
              // width: 400,
              // color: Colors.blue,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text('"Alert today , Alive tomorrow"' , style: TextStyle(color: Colors.orange , fontSize: 25 , fontWeight: FontWeight.w700),),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30 , top: 280),
            child: Text('Contribute' , style: TextStyle(
                color: Colors.white , fontSize: 20 , fontWeight: FontWeight.w700
            ),),
          ),//Text
          Padding(
            padding: const EdgeInsets.only(left: 30 , top: 330),
            child: Row(
              children: [
                Link(uri: Uri.parse('http://surl.li/sbsfl'),
                  builder: (context , followLink) => ElevatedButton(
                      onPressed: followLink,
                      child: Row(
                        mainAxisSize: MainAxisSize.min, // To minimize the width of the Row
                        children: [
                          Text('Add\nLocation' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w600 , color: Colors.black),), // Button text// Spacer between text and icon
                          SizedBox(width: 0),
                          Icon(Icons.arrow_right, color: Colors.black , size: 40,), // Filled arrow icon
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(150, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )
                      )
                  ),
                ),
                // Container(
                //   child: Link,
                // ),
                SizedBox(
                  width: 30,
                ),
                Link(uri: Uri.parse(''),
                  builder: (context , followLink) => ElevatedButton(
                      onPressed: followLink,
                      child: Row(
                        mainAxisSize: MainAxisSize.min, // To minimize the width of the Row
                        children: [
                          Text('Update\nLocation' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w600 , color: Colors.black),), // Button text// Spacer between text and icon
                          SizedBox(width: 0),
                          Icon(Icons.arrow_right, color: Colors.black , size: 40,), // Filled arrow icon
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(150, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )
                      )
                  ),
                ),
              ],
            ),
          ), //buttons of alert and call

          SizedBox(height: 30,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 470),
                child: Text(
                  'Weather Forecast',
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          Positioned(
            top: 530,
            left: 30,
            right: 30,

            // right: ,
            child: HomePage(weather: _weather),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 30 , top: 460),
          //   child: Text('Weather Forecast' , style: TextStyle(
          //       color: Colors.white , fontSize: 20 , fontWeight: FontWeight.w700
          //   ),),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 30 , top: 510),
          //   child: ElevatedButton(onPressed: (){}, child: Padding(
          //     padding: const EdgeInsets.only(right: 90 , bottom: 130),
          //     child: Text('Kolhapur,Maharashtra' , style: TextStyle(fontSize: 20),),
          //   ),
          //       style: ElevatedButton.styleFrom(
          //           fixedSize: Size(325, 250),
          //           shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(30),
          //           ))),
          // ), //weather forecast


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
                            MaterialPageRoute(builder: (context) => agencyHomePage(),),
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
                            MaterialPageRoute(builder: (context) => agencydisasterNews(),),
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
                            MaterialPageRoute(builder: (context) => agencyprofilePage(),),
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
          ),//Bottom Navigation Bar
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final Weather? weather ;

  const HomePage({Key? key, this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (weather == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    String weatherImage = '';
    if (weather!.temperature!.celsius! > 30) {
      weatherImage = 'images/sun.png';
    } else if (weather!.temperature!.celsius! >= 20 && weather!.temperature!.celsius! <= 30) {
      weatherImage = 'images/snowflake.png';
    } else {
      weatherImage = 'images/cloudy.png';
    }
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white, // Change to your desired background color
        borderRadius: BorderRadius.vertical(top: Radius.circular(20) , bottom: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Here is the Todays Weather :',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            '${weather?.areaName ?? ""}',
            style: TextStyle(
                color: Colors.black ,
                fontSize: 23,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 20),
          Text(
            '${weather?.temperature?.celsius?.toStringAsFixed(0)}° C',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 21
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 250,),
            child: Image.asset(
              weatherImage,
              height: 50,
              width: 50,
            ),
          ),
        ],
      ),
    );
  }
}

