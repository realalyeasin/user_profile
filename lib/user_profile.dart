import 'package:flutter/material.dart';
import 'package:user_profile/settings.dart';
import 'logout_login_page.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent[200],
          centerTitle: true,
          title: Text(
            'Profile',
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Settings()));},
                icon: Icon(
                  Icons.settings,
                  size: 34,
                  color: Colors.black,
                )),
            SizedBox(
              width: 12,
            )
          ],
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.all_inbox_outlined,
                color: Colors.black,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        drawer: Drawer(
          elevation: 16,
          child: Column(
            children: [
              Container(
                height: 230,
                color: Colors.amberAccent[200],
                child: Padding(
                    padding: const EdgeInsets.all(38.0),
                    child: Container(
                      width: double.infinity,
                      color: Colors.amberAccent,
                      child: Icon(
                        Icons.account_box,
                        size: 150,
                      ),
                    )),
              ),
              Divider(
                height: 3,
                thickness: 2,
                color: Colors.amberAccent,
              ),
              ListTile(
                tileColor: Colors.black,
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.amberAccent),
                ),
                leading: Icon(Icons.home, color: Colors.amberAccent),
              ),
              Divider(
                height: 3,
                thickness: 1,
                color: Colors.black,
              ),
              ListTile(
                autofocus: true,
                tileColor: Colors.black,
                title: Text(
                  "Profile",
                  style: TextStyle(color: Colors.amberAccent),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserProfile()));
                },
                leading: Icon(
                  Icons.account_box_outlined,
                  color: Colors.amberAccent,
                ),
              ),
              Divider(
                height: 3,
                thickness: 1,
                color: Colors.amberAccent,
              ),
              ListTile(
                tileColor: Colors.black,
                title: Text(
                  "Favorites",
                  style: TextStyle(color: Colors.amberAccent),
                ),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.amberAccent,
                ),
              ),
              Divider(
                height: 3,
                thickness: 1,
                color: Colors.amberAccent,
              ),
              ListTile(
                tileColor: Colors.black,
                title: Text(
                  "Settings",
                  style: TextStyle(color: Colors.amberAccent),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Settings()));
                },
                leading: Icon(
                  Icons.settings,
                  color: Colors.amberAccent,
                ),
              ),
              Divider(
                height: 3,
                thickness: 1,
                color: Colors.amberAccent,
              ),
              ListTile(
                tileColor: Colors.black,
                title: Text(
                  "Log Out",
                  style: TextStyle(color: Colors.amberAccent),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LogoutLogin()));
                },
                leading: Icon(
                  Icons.logout,
                  color: Colors.amberAccent,
                ),
              ),
              Divider(
                height: 3,
                thickness: 1,
                color: Colors.amberAccent,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amberAccent,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.account_box, color: Colors.black,), title: Text('Profile', style: TextStyle(color: Colors.black),)),
            BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black,), title: Text('Home', style: TextStyle(color: Colors.black),)),
            BottomNavigationBarItem(icon: Icon(Icons.settings, color: Colors.black,), title: Text('Settings', style: TextStyle(color: Colors.black),)),
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Stack(
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      height: 190,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 1),
                            )
                          ]),
                    ),
                    Positioned(
                        left: 173,
                        bottom: 150,
                        child: CircleAvatar(
                          foregroundColor: Colors.yellowAccent,
                          backgroundColor: Colors.black,
                          radius: 45,
                          backgroundImage: AssetImage('images/me.jpg'),
                        )),
                    Positioned(
                        top: 66,
                        left: 30,
                        child: Text(
                          'Al Yeasin',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              letterSpacing: 4),
                        )),
                    Positioned(
                        top: 105,
                        left: 30,
                        child: Text(
                          '@alyeasin',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                        top: 135,
                        left: 180,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LogoutLogin()));
                            },
                            child: Text(
                              'Log Out',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            )))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  width: 360,
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 1),
                        )
                      ]),
                  child: ListTile(
                    leading: Icon(
                      Icons.history,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Order History',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  width: 360,
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 1),
                        )
                      ]),
                  child: ListTile(
                    leading: Icon(
                      Icons.delivery_dining,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Delivery Address',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  width: 360,
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 1),
                        )
                      ]),
                  child: ListTile(
                    leading: Icon(
                      Icons.payment,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Cards and Payment',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  width: 360,
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 1),
                        )
                      ]),
                  child: ListTile(
                    leading: Icon(
                      Icons.my_location,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Tracking Orders',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
