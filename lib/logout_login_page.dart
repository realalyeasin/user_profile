import 'package:flutter/material.dart';

class LogoutLogin extends StatefulWidget {
  const LogoutLogin({Key? key}) : super(key: key);

  @override
  _LogoutLoginState createState() => _LogoutLoginState();
}

class _LogoutLoginState extends State<LogoutLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 160,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.7),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 1),
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              color: Colors.black,
                              backgroundColor: Colors.white,
                              fontSize: 28,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.black,
                              backgroundColor: Colors.white,
                              fontSize: 28,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
