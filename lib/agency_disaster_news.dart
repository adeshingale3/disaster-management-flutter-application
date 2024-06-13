import 'package:disaster_management_app_final/agency_home_page.dart';
import 'package:disaster_management_app_final/agency_profile_page.dart';
import 'package:disaster_management_app_final/user_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:webview_flutter/webview_flutter.dart';

class agencydisasterNews extends StatefulWidget {
  const agencydisasterNews({Key? key}) : super(key: key);

  @override
  State<agencydisasterNews> createState() => _MyWebsiteState();
}

class _MyWebsiteState extends State<agencydisasterNews> {

  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled)
    ..loadRequest(Uri.parse("https://rb.gy/rwdo3h"));


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
                                  MaterialPageRoute(builder: (context) =>agencyHomePage(),),
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
                                  MaterialPageRoute(builder: (context) =>agencydisasterNews(),),
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
                                  MaterialPageRoute(builder: (context) =>agencyprofilePage(),),
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



// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
// class disasterNews extends StatefulWidget {
//   const disasterNews({Key? key}) : super(key: key);
//
//   @override
//   State<disasterNews> createState() => _DisasterNewsState();
// }
//
// class _DisasterNewsState extends State<disasterNews> {
//   late WebViewController _controller;
//
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async {
//         final canGoBack = await _controller.canGoBack();
//         if (canGoBack) {
//           _controller.goBack();
//           return false;
//         }
//         return true;
//       },
//       child: Scaffold(
//         body: Column(
//           children: [
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 40),
//                 child: WebView(
//                   initialUrl: 'https://rb.gy/rwdo3h',
//                   javascriptMode: JavascriptMode.disabled,
//                   onWebViewCreated: (controller) {
//                     _controller = controller;
//                   },
//                 ),
//               ),
//             ),
//             Container(
//               color: Colors.blue,
//               height: 50,
//               child: Center(
//                 child: Text(
//                   'Your Footer Content',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




