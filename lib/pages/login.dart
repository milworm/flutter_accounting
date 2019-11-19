import 'package:flutter/cupertino.dart';
import 'package:flutter_example_1/models/User.dart';

import './accounts.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.activeBlue,
      child: Center(
        child: this._renderCenter(context)
      )
    );
  }

  Widget _renderCenter(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.7,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 40.0),
              child: Text(
                'AccountU',
                style: TextStyle(
                  fontSize: 40,
                  color: CupertinoColors.white
                )
              )
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: CupertinoTextField(
                controller: emailController,
                placeholder: 'Email address',
                cursorColor: CupertinoColors.white,
                style: TextStyle(color: CupertinoColors.white),
                placeholderStyle: TextStyle(color: CupertinoColors.white),
              ),
            ),
            CupertinoTextField(
              controller: passwordController,
              placeholder: 'Password',
              obscureText: true,
              cursorColor: CupertinoColors.white,
              style: TextStyle(color: CupertinoColors.white),
              placeholderStyle: TextStyle(color: CupertinoColors.white),
            ),
            this._renderLogInButton(context)
          ],
        )
      )
    );
  }

  _renderLogInButton(BuildContext context) {
    return Container(
      child: CupertinoButton(
        padding: EdgeInsets.only(top: 18),
        child: Text(
          'Sign in', 
          style: TextStyle(color: CupertinoColors.white)
        ),
        onPressed: () {
          this._logIn(context);
        }
      )
    );
  }

  _logIn(BuildContext context) {
    var result = User.logIn(
      this.emailController.text, 
      this.passwordController.text
    );

    if (!result)
      return;

    print('log in');

    Navigator.of(context).push(
      CupertinoPageRoute(
        builder: (context) {
          return AccountsPage();
        }
      )
    );
  }
}