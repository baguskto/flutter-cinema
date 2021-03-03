import 'package:flutix/services/services.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('data'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text('Sign Up'),
                  onPressed: () async {
                    SignInSignUpResult result = await AuthServices.signUp(
                        'baguskto@gmail.com',
                        "12345678",
                        "Bagus",
                        ["Action", "Horror", "Music", "Drama"],
                        "English");

                    if (result.user == null) {
                      print(result.message);
                    } else {
                      print(result.user.toString());
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  child: Text('Sign In'),
                  onPressed: () async {
                    SignInSignUpResult result = await AuthServices.signIn(
                      'baguskto@gmail.com',
                      "1234567890",
                    );

                    if (result.user == null) {
                      print(result.message);
                    } else {
                      print(result.user.toString());
                    }
                  },
                )
              ],
            ),
          )),
    );
  }
}
