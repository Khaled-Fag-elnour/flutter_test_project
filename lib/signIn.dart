import 'package:day1_flutter_app/cardsList.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Sign in',
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter Your Email',
                        contentPadding: EdgeInsets.all(12)),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Your Password',
                      contentPadding: EdgeInsets.all(12),
                    ),
                    obscureText: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Column(
                      children: <Widget>[
                        RaisedButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 18),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CardsList()),
                            );
                          },
                        ),
                        Container(
                            child: Row(
                          children: <Widget>[
                            Text('Do not have account?'),
                            FlatButton(
                              textColor: Colors.blue,
                              child: Text(
                                'Register',
                                style: TextStyle(fontSize: 18),
                              ),
                              onPressed: () {
                                //Register
                              },
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        )),
                        FlatButton(
                          textColor: Colors.blue,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(fontSize: 18),
                          ),
                          onPressed: () {
                            //Reset Password
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
