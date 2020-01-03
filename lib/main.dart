import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_design_challenge/screen/index.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreenDesign(),
    ));

class LoginScreenDesign extends StatelessWidget {
  const LoginScreenDesign({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Design Challenge"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text(
                "Login 1",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login1()));
              },
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: Text(
                "Login 2",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login2()));
              },
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
