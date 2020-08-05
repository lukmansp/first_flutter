import 'package:flutter/material.dart';
import 'package:provider_architecture/core/viewmodels/register_model.dart';
import 'package:provider_architecture/ui/views/login/login_bloc.dart';
import '../base_view.dart';
import 'package:flutter/cupertino.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<RegisterModel>(
      builder: (context, model, child) =>
          Scaffold(backgroundColor: Colors.blue[700], body: Body()),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Bloc();
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
                  'Register',
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
                          padding: EdgeInsets.only(top: 10),
                          child: Column(
                            children: <Widget>[
                              StreamBuilder<String>(
                                stream: bloc.email,
                                builder: (context, snapshot) => TextField(
                                  onChanged: bloc.emailChanged,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      hintText: 'Enter fullname',
                                      labelText: 'Fullname',
                                      errorText: snapshot.error),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              StreamBuilder<String>(
                                stream: bloc.password,
                                builder: (context, snapshot) => TextField(
                                  onChanged: bloc.passwordChanged,
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      hintText: 'Enter Password',
                                      labelText: "password",
                                      errorText: snapshot.error),
                                ),
                                
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              StreamBuilder<String>(
                                stream: bloc.email,
                                builder: (context, snapshot) => TextField(
                                  onChanged: bloc.emailChanged,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      hintText: 'Enterr address',
                                      labelText: 'Address',
                                      errorText: snapshot.error),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(top: 5),
                          child: StreamBuilder<Object>(
                              stream: bloc.submitCheck,
                              builder: (context, snapshot) {
                                return ButtonTheme(
                                  height: 50,
                                  child: RaisedButton(
                                    onPressed: snapshot.hasData ? () {} : null,
                                    color: Colors.blue[500],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: const Text('Sign up',
                                        style: TextStyle(
                                            fontSize: 17, color: Colors.white)),
                                  ),
                                );
                              }),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Already have account ?'),
                              FlatButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'login');
                                  },
                                  child: Text(
                                    'Sign in',
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
