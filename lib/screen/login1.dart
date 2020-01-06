import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math' as math;

class Login1 extends StatelessWidget {
  final double _cardHeight = 530;
  const Login1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.amber[600],
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 90, 30, 30),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ClipPath(
                        clipper: DiagonalPathClipper(radius: 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.white,
                          ),
                          height: _cardHeight,
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 50,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "LOGIN",
                                  style: GoogleFonts.poppins(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  "Email or Username",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    textStyle: TextStyle(
                                      color: Colors.black38,
                                    ),
                                  ),
                                ),
                                TextField(
                                  cursorColor: Colors.amber[300],
                                  keyboardType: TextInputType.emailAddress,
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    textStyle:
                                        Theme.of(context).textTheme.body1,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.amber[200],
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
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
                                  cursorColor: Colors.amber[300],
                                  keyboardType: TextInputType.emailAddress,
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    textStyle:
                                        Theme.of(context).textTheme.body1,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.amber[200],
                                        width: 2,
                                      ),
                                    ),
                                    suffixIcon: InkWell(
                                      child: Icon(
                                        Icons.visibility_off,
                                        color: Colors.amber[400],
                                      ),
                                      onTap: () {
                                        print("change visibility");
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: FlatButton(
                                    child: Text(
                                      "Forgot Password?",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        textStyle: TextStyle(
                                          color: Colors.black38,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      print("Forgot Password Pressed");
                                    },
                                    padding: EdgeInsets.only(top: 20),
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: _cardHeight - 70,
                    right: 20,
                    child: Transform.rotate(
                      angle: math.pi,
                      child: InkWell(
                        onTap: () {
                          print("Sign in");
                        },
                        child: Icon(
                          Icons.keyboard_backspace,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: _cardHeight - 45,
                    left: 50,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: InkWell(
                        onTap: () {
                          print("Login with Facebook");
                        },
                        child: Icon(
                          FontAwesomeIcons.facebookF,
                          size: 30,
                          color: Colors.amber[600],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: _cardHeight - 20,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: InkWell(
                        onTap: () {
                          print("Login with Google");
                        },
                        child: Icon(
                          FontAwesomeIcons.google,
                          size: 30,
                          color: Colors.amber[600],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: _cardHeight + 5,
                    right: 50,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: InkWell(
                        onTap: () {
                          print("Login with Twitter");
                        },
                        child: Icon(
                          FontAwesomeIcons.twitter,
                          size: 30,
                          color: Colors.amber[600],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          text: "Already have an account? ",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Sign up',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print("Sign Up");
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DiagonalPathClipper extends CustomClipper<Path> {
  final double radius;

  DiagonalPathClipper({this.radius});

  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0.0, size.height - size.height * 0.2)
      ..arcToPoint(
        Offset(radius - radius * 0.2, size.height - size.height * 0.2 + radius),
        radius: Radius.circular(radius + radius * 0.2),
        clockwise: false,
      )
      ..lineTo(size.width - radius, size.height)
      ..arcToPoint(
        Offset(size.width, size.height),
        radius: Radius.circular(radius),
        clockwise: false,
      )
      ..lineTo(size.width, 0.0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
