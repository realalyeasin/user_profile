import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Settings',
                        style: TextStyle(
                            color: Colors.amberAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            letterSpacing: 2.5),
                      ),
                    ],
                  ),
                  Divider(
                    height: 30,
                    thickness: 2,
                    color: Colors.amberAccent,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Card(
                          child: Container(
                            color: Colors.amberAccent,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Change Picture',
                                style: TextStyle(
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Card(
                          child: Container(
                            color: Colors.amberAccent,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Change Name',
                                style: TextStyle(
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Card(
                          child: Container(
                            color: Colors.amberAccent,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Change Password',
                                style: TextStyle(
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Card(
                          child: Container(
                            color: Colors.amberAccent,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Change Email',
                                style: TextStyle(
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Card(
                          child: Container(
                            color: Colors.amberAccent,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Change Delete Account',
                                style: TextStyle(
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.amberAccent,
                                )),
                            Text(
                              'Back',
                              style: TextStyle(
                                  color: Colors.amberAccent,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2),
                            )
                          ],
                        ),
                      ],
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
