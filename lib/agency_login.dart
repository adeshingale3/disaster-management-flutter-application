
import 'package:disaster_management_app_final/agency_register.dart';
import 'package:disaster_management_app_final/agency_home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main(){
  runApp(agencyLogin());
}


class agencyLogin extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<agencyLogin> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
        Container(
            child: Padding(
              padding: EdgeInsets.only(left: 35 , top: 200),
              child: Text('LOGIN' , style: TextStyle(color: Colors.orange , fontSize: 33 , fontWeight: FontWeight.w700),),
            ),
          ),
          SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 300 , left: 30 , right: 30),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        validator: (input) {
                          if (input == null || input.isEmpty) {
                            return 'Please enter an email';
                          }
                          return null;
                        },
                        onSaved: (input) => _email = input!,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      TextFormField(
                        validator: (input) {
                          if (input == null || input.isEmpty) {
                            return 'Please enter a password';
                          }
                          return null;
                        },
                        onSaved: (input) => _password = input!,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: signIn,
                        child: Text('Login'),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => agencyRegister()),
                            );
                          },
                          child: Text(
                            'New Here? Register',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white),
                          )),
                    ],
                  ),
                ),
              ),
            ),

        ],
      )
    );
  }

  void signIn() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      try {
        UserCredential user = await _auth.signInWithEmailAndPassword(
            email: _email, password: _password);
        if (user != null) {
          // Navigator.pushReplacementNamed(context, '/agency_home_page');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => agencyHomePage(),),
          );
        }
      } catch (e) {
        print(e.toString());
        // Show error message to user
      }
    }
  }
}


// class agencyLogin extends StatelessWidget {
//   const agencyLogin({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Stack(
//         children: [
//           Container(
//             child: Padding(
//               padding: EdgeInsets.only(left: 35 , top: 200),
//               child: Text('LOGIN' , style: TextStyle(color: Colors.orange , fontSize: 33 , fontWeight: FontWeight.w700),),
//             ),
//           ),
//           SingleChildScrollView(
//             child: Container(
//               child: Padding(
//                 padding: EdgeInsets.only(
//                     top: MediaQuery.of(context).size.width * 0.8, right: 35 , left: 35),
//                 child: Column(
//                   children: [
//                     TextField(
//                       decoration: InputDecoration(
//                           fillColor: Colors.white,
//                           filled: true,
//                           hintText: 'Email',
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10)
//                           )
//                       ),
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     TextField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                           fillColor: Colors.white,
//                           filled: true,
//                           hintText: 'Password',
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10)
//                           )
//                       ),
//                     ),
//                     Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(left: 200),
//                           child: TextButton(onPressed: (){},
//                               child: Text('Forget Password?' ,
//                                 style: TextStyle(
//                                   color: Colors.white,
//
//                                 ),)),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: 40,
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         ElevatedButton(onPressed: (){},
//                           child: Text('Login' ,
//                             style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w700
//                             ),) ,
//                         )
//                         // CircleAvatar(
//                         //   radius: 30,
//                         //   backgroundColor: Colors.white,
//                         //   child: IconButton(
//                         //     onPressed: (){},
//                         //     icon: Icon(Icons.arrow_forward),
//                         //   ),
//                         // ),
//
//
//                       ],
//                     ),
//                     SizedBox(
//                       height: 40,
//                     ),
//                     Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(left: 80),
//                           child: TextButton(
//                               onPressed: (){
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(builder: (context) => agencyRegister()),
//                                 );
//                               },
//                               child: Text(
//                                 'New Here? Register',
//                                 style: TextStyle(
//                                     decoration: TextDecoration.underline,
//                                     fontSize: 18,
//                                     color: Colors.white
//                                 ),
//                               )),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
