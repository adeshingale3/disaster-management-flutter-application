import 'package:disaster_management_app_final/agency_disaster_news.dart';
import 'package:disaster_management_app_final/user_disaster_news.dart';
import 'package:disaster_management_app_final/user_home_page.dart';
import 'package:flutter/material.dart';
import 'package:disaster_management_app_final/agency_home_page.dart';
import 'package:disaster_management_app_final/agency_profile_page.dart';
import 'package:disaster_management_app_final/user_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:webview_flutter/webview_flutter.dart';

class medicalInformation extends StatefulWidget {
  const medicalInformation({super.key});

  @override
  State<medicalInformation> createState() => _medicalInformationState();
}

class _medicalInformationState extends State<medicalInformation> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled)
    ..loadRequest(Uri.parse("https://pubmed.ncbi.nlm.nih.gov/18209218/"));
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        var isLastPage = await controller.canGoBack();
        if(isLastPage){
          controller.goBack();
          return false;
        }
        return true;
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Stack(
              children: [

                Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: WebViewWidget(controller: controller,),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 740),
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
                                  MaterialPageRoute(builder: (context) =>userhomePage(),),
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
                                  MaterialPageRoute(builder: (context) =>disasterNews(),),
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
                ),


              ],
            )
        ),
      ),
    );
  }
}
