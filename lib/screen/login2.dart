import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Login2 extends StatelessWidget {
  const Login2({Key key}) : super(key: key);

  Gradient linearGradient() => LinearGradient(
        colors: [Colors.lightBlueAccent, Colors.deepPurple],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        stops: [0.01, 0.9],
      );

  Widget circle({double size}) => Material(
        shape: CircleBorder(),
        clipBehavior: Clip.antiAlias,
        color: Colors.transparent,
        elevation: 2.0,
        child: Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: linearGradient(),
          ),
        ),
      );

  Widget horizontalLine(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.25,
          height: 1.4,
          color: Colors.grey.withOpacity(.4),
        ),
      );

  Widget socialIcon({IconData icon, Color bgColor, Function onTap}) => Material(
        shape: CircleBorder(),
        clipBehavior: Clip.antiAlias,
        elevation: 2.0,
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Ink(
            height: 40,
            width: 40,
            decoration: BoxDecoration(shape: BoxShape.circle, color: bgColor),
            child: Icon(icon, size: 20, color: Colors.white),
          ),
        ),
      );

  Widget loginForm() => Container(
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(
              color: Colors.lightBlue,
              width: 7,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 7.0, right: 10.0),
          child: Card(
            margin: EdgeInsets.all(0.0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 20, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Hello!!",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Username",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      textStyle: TextStyle(
                        color: Colors.black38,
                      ),
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Password",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      textStyle: TextStyle(
                        color: Colors.black38,
                      ),
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: () {
                          print("I Forgot");
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 13,
                            left: 4,
                          ),
                          child: Text(
                            "I Forgot",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              textStyle: TextStyle(
                                color: Colors.lightBlue,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Positioned(
                    top: 90,
                    right: -45,
                    child: circle(size: 100),
                  ),
                  Positioned(
                    top: 145,
                    right: 60,
                    child: circle(size: 40),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 150.0, bottom: 50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 43.0),
                      child: Text(
                        "Login",
                        style: GoogleFonts.poppins(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: loginForm(),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                            ),
                          ),
                          clipBehavior: Clip.antiAlias,
                          elevation: 2.0,
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              print("Login");
                            },
                            child: Ink(
                              height: 50,
                              width: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                                ),
                                gradient: linearGradient(),
                              ),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        horizontalLine(context),
                        Text(
                          "Social Login",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            textStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        horizontalLine(context)
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        socialIcon(
                          icon: FontAwesomeIcons.facebookF,
                          bgColor: Colors.indigo[800],
                          onTap: () {
                            print("Login with Facebook");
                          },
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        socialIcon(
                          icon: FontAwesomeIcons.instagram,
                          bgColor: Colors.red[800],
                          onTap: () {
                            print("Login with Instagram");
                          },
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        socialIcon(
                          icon: FontAwesomeIcons.twitter,
                          bgColor: Colors.lightBlue[600],
                          onTap: () {
                            print("Login with Twitter");
                          },
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        socialIcon(
                          icon: FontAwesomeIcons.linkedinIn,
                          bgColor: Colors.lightBlue[800],
                          onTap: () {
                            print("Login with LinkedIn");
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: "New User? ",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            textStyle:
                                TextStyle(color: Colors.black, wordSpacing: 2),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Sign Up",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                textStyle: TextStyle(
                                  color: Colors.lightBlue,
                                ),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print("SignUp");
                                },
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
