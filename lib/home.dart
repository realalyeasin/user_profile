import 'package:flutter/material.dart';
import 'package:user_profile/settings.dart';
import 'package:user_profile/user_profile.dart';

import 'bottom_navigation.dart';
import 'logout_login_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.all_inbox_outlined,
              color: Colors.amberAccent,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Home', style: TextStyle(color: Colors.amberAccent, letterSpacing: 2),),
      ),
      backgroundColor: Colors.amberAccent[200],
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BottomNavigation()));
              },
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
      body: Padding(
        padding: const EdgeInsets.all(58.0),
        child: Container(
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.lime[200],
            boxShadow: [BoxShadow(
              color: Colors.black.withOpacity(.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 1),
            )]
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.amberAccent,
                  shadowColor: Colors.black,
                  elevation: 5,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Welcome to Track Order', style: TextStyle(color: Colors.black, fontSize: 18),),
                    ),
                  ),
                ),
              ),
              Divider(height: 3, thickness: 2, color: Colors.black,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.amberAccent,
                  shadowColor: Colors.black,
                  elevation: 5,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('We are always ready for greater and faster services for you', style: TextStyle(color: Colors.black, fontSize: 18),),
                    ),
                  ),
                ),
              ),
              Divider(height: 3, thickness: 2, color: Colors.black,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.amberAccent,
                  shadowColor: Colors.black,
                  elevation: 5,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('One of the leading companies in the country', style: TextStyle(color: Colors.black, fontSize: 18),),
                    ),
                  ),
                ),
              ),
              Divider(height: 3, thickness: 2, color: Colors.black,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.amberAccent,
                  shadowColor: Colors.black,
                  elevation: 5,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Your trust', style: TextStyle(color: Colors.black, fontSize: 18),),
                    ),
                  ),
                ),
              ),
              Divider(height: 3, thickness: 3, color: Colors.black,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){}, child: Text('Reviews from our customers to know about US ! ! !',  style: TextStyle(color: Colors.black,letterSpacing: 1,fontWeight: FontWeight.bold, fontSize: 18))),
              )

            ],
          ),
        ),
      ),
    );
  }
}
