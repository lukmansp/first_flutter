import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/core/enums/viewstate.dart';
import 'package:provider_architecture/core/viewmodels/login_model.dart';
import 'package:provider_architecture/ui/shared/app_colors.dart';
import 'package:provider_architecture/ui/widgets/login_header.dart';

import 'base_view.dart';

class LoginView extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginModel>(
      builder: (context, model, child) =>
          Scaffold(backgroundColor: Colors.blue[700], body: Body()),
    );
  }
}

class Body extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controllerPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.blue),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          // padding: EdgeInsets.all(10),
                          // decoration: BoxDecoration(
                          //     border: Border(
                          //         bottom: BorderSide(color: Colors.grey[200]))),
                          child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 10.0),
                                child: Text(
                                  'Email / Username',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              CupertinoTextField(
                                controller: _controller,
                                clearButtonMode: OverlayVisibilityMode.editing,
                                prefix:
                                    Padding(padding: EdgeInsets.only(left: 5)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          // padding: EdgeInsets.all(5),
                          // decoration: BoxDecoration(
                          //     border: Border(
                          //         bottom: BorderSide(color: Colors.grey[200]))),
                          child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5.0, vertical: 5.0),
                                child: Text(
                                  'Password',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              CupertinoTextField(
                                obscureText: true,
                                controller: _controllerPass,
                                clearButtonMode: OverlayVisibilityMode.editing,
                                prefix:
                                    Padding(padding: EdgeInsets.only(left: 5)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot password ?',
                                style: TextStyle(color: Colors.blue[300]),
                              )),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(top: 20),
                          child: RaisedButton(
                            onPressed: () {},
                            color: Colors.blue[500],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              // side: BorderSide(color: Colors.red)
                            ),
                            child: const Text('Sign in',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white)),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            'Or sign in with ...',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                color: Colors.white,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Image.asset(
                                          'assets/images/google.jpeg',
                                          width: 30,
                                          height: 30,
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text(
                                        "With google",
                                        style: TextStyle(
                                            color: Colors.blue[300],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () {},
                              ),
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                color: Colors.white,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Image.asset(
                                          'assets/images/facebook.png',
                                          width: 30,
                                          height: 30,
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text(
                                        "With facebook",
                                        style: TextStyle(
                                            color: Colors.blue[300],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Dont have account ?'),
                              FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Sign up',
                                    style: TextStyle(color: Colors.blue[300]),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
// class Body extends StatelessWidget {
//   final TextEditingController _controller = TextEditingController();
//   final TextEditingController _controllerPass = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return SafeArea(
//         child: Column(
//       children: <Widget>[
//         Container(
//           padding: EdgeInsets.only(top: 50),
//           child: Text(
//             'Sign In',
//             style: TextStyle(color: Colors.white, fontSize: 20.0),
//           ),
//         ),
//         Expanded(
//             child: Stack(
//           children: <Widget>[
//             // background
//             Container(
//               margin: EdgeInsets.only(top: 50),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(40),
//                   topRight: Radius.circular(40),
//                 ),
//               ),
//             ),
//             // form text
//             Container(
//               padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 30.0),
//               child: Column(
//                 children: <Widget>[
//                   Container(
//                     alignment: Alignment.centerLeft,
//                     padding:
//                         EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
//                     child: Text(
//                       'Email / Username',
//                       style: TextStyle(color: Colors.grey),
//                     ),
//                   ),
//                   CupertinoTextField(
//                     controller: _controller,
//                     clearButtonMode: OverlayVisibilityMode.editing,
//                     prefix: Padding(padding: EdgeInsets.only(left: 5)),
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.symmetric(vertical: 180.0, horizontal: 30.0),
// child: Column(
//   children: <Widget>[
//     Container(
//       alignment: Alignment.centerLeft,
//       padding:
//           EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
//       child: Text(
//         'Password',
//         style: TextStyle(color: Colors.grey),
//       ),
//     ),
//     CupertinoTextField(
//       obscureText: true,
//       controller: _controllerPass,
//       clearButtonMode: OverlayVisibilityMode.editing,
//       prefix: Padding(padding: EdgeInsets.only(left: 5)),
//     )
//   ],
// ),
//             ),
//             // end form

//             // forgot pass
//             Container(
//               padding: EdgeInsets.symmetric(vertical: 280.0, horizontal: 30.0),
//               alignment: Alignment.bottomRight,
//               child: Text(
//                 'Forgot Password ?',
//                 style: TextStyle(color: Colors.blue[400]),
//               ),
//             ),
//             Container(
//               width: double.infinity,
//               padding: EdgeInsets.fromLTRB(30, 300, 30, 0),
//               child: RaisedButton(
//                 onPressed: () {},
//                 color: Colors.blue[500],
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(5),
//                   // side: BorderSide(color: Colors.red)
//                 ),
//                 child: const Text('Sign in',
//                     style: TextStyle(fontSize: 17, color: Colors.white)),
//               ),
//             ),
//             Container(
//                 padding: EdgeInsets.only(top: 200),
//                 alignment: Alignment.center,
//                 child: Text(
//                   'Or sign in with',
//                   style: TextStyle(color: Colors.grey),
//                 )),
//             Container(
//               padding: EdgeInsets.symmetric(vertical: 90, horizontal: 80),
//               alignment: Alignment.bottomCenter,
//               child: Row(
//                 children: <Widget>[
//                   Text('You dont have account? '),
//                   Text(
//                     'Sign up',
//                     style: TextStyle(color: Colors.blue[400]),
//                   )
//                 ],
//               ),
//             )

//             // button
//           ],
//         ))
//       ],
//     ));
//   }
// }
