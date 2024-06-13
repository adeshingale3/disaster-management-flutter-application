
import 'package:disaster_management_app_final/agency_login.dart';
import 'package:disaster_management_app_final/splash_screen.dart';
import 'package:disaster_management_app_final/user_login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());

}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            color: Colors.orange,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200 ),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => userLogin(),),
                        );
                      },
                      child: Text("Login As User" , style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(200, 50),
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )
                      )
                  ),
                ),
              ],
            )
          ),
          Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 200 ),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => agencyLogin(),),
                          );
                        },
                        child: Text("Login As Agency" , style: TextStyle(color: Colors.white),),
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(200, 50),
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )
                        )
                    ),
                  ),
                ],
              )
          )
        ],
      )


      // Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Center(
      //       child: ElevatedButton(
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => userLogin(),),
      //           );
      //         },
      //
      //         child: Text('Login As User'),
      //       ),
      //     ),
      //     Center(
      //       child: ElevatedButton(
      //           onPressed: (){
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) => agencyLogin(),),
      //             );
      //
      //           },
      //           child: Text('Login As Agency')
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}