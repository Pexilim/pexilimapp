import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(10, 15, 0, 0),
                  child: SafeArea(
                    child: Image.asset('assest/Pexilim_logo.png'),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: SafeArea(
                    child: Image.asset('assest/Image_home.png'),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(60, 20, 0, 0),
                  child: Text(
                    '“ Building a community \n for learners ”',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2f2e41),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                  side: BorderSide(color: Color.fromRGBO(255, 69, 102, 1)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset("assest/google_icon.png", height: 24),
                    SizedBox(width: 12),
                    Text("Sign in with Google",
                        style:
                            TextStyle(color: Color.fromRGBO(255, 69, 102, 1))),
                  ],
                ),
                onPressed: () {
                  // Perform the login with Google action
                },
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
