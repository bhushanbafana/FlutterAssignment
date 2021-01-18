import 'package:flutter/material.dart';

import 'database.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Profile', style:
                TextStyle(
                  color: Colors.white,
                  fontSize: 30
                )),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all()
              ),
            ),
            ListTile(
                leading: Icon(Icons.featured_play_list),
              title: Text('Products', style:
              TextStyle(
                  color: Colors.blue,
                  fontSize: 20
              )),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                print(SQLiteDbProvider.db.getAllProducts().);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.local_offer),
              title: Text('Offers', style:
                  TextStyle(
                  color: Colors.blue,
                  fontSize: 20
              )),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
                leading: Icon(Icons.local_offer),
              title: Text('10+1 Plan', style:
              TextStyle(
                  color: Colors.blue,
                  fontSize: 20
              )),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
                leading: Icon(Icons.contact_phone),
              title: Text('Contact Us', style:
              TextStyle(
                  color: Colors.blue,
                  fontSize: 20
              )),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
                leading: Icon(Icons.verified_user),
              title: Text('Logout', style:
              TextStyle(
                  color: Colors.blue,
                  fontSize: 20
              )),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}