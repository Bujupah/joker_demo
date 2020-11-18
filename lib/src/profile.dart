import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:joker/src/widget_test.dart';
import 'package:sign_button/sign_button.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  Widget buildSocialMedia(ButtonType icon, String message) {
    return SignInButton(
      buttonType: icon,
      onPressed: () {},
    );
  }

  Widget buildTitle(String label) {
    return Text(label, style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About me'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              print('Go to profile2');
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text('khalil@gmail.com'),
              accountName: Text('Khalil Mejdi'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/head.png'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                print('Go to home!');
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Schedule'),
              onTap: () {
                print('Go Scheduling!');
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Info'),
              onTap: () {
                print('Go to Info!');
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
              onTap: () {
                print('Go to Help!');
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.person),
        backgroundColor: Colors.white,
        onPressed: () {
          print('Go to profile');
        },
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(32),
        child: ListView(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/head.png'),
              radius: 100,
            ),
            Text('Khalil Mejdi', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            Text('Application Developer', style: TextStyle(fontSize: 18)),
            SizedBox(height: 64),

            buildTitle('Education'),
            WidgetTestLabel(event: 'Technical Baccalaureate', year: 2016),
            WidgetTestLabel(event: 'Fundamental licanse in Computer Science', year: 2019),

            buildTitle('Professional Experience'),
            WidgetTestLabel(event: 'Tunav', year: 2020),
            WidgetTestLabel(event: 'Smart eTech', year: 2018),

            SizedBox(height: 32),
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          print('$index');
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings'
          )
        ],
      ),
    );
  }
}