import 'package:flutter/material.dart';
import 'package:simple_drawer/home.dart';
import 'package:simple_drawer/login.dart';
import 'package:simple_drawer/profile.dart';
import 'package:simple_drawer/setting.dart';


class MyDrawer extends StatelessWidget {
 final Function onTap;
 MyDrawer({this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/dominic.PNG'),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text('Dominic Whye',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                    ),
                    SizedBox(height: 3,),
                    Text('dominicwhye@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,),
                      ),
                 ],
               ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap:()=>onTap(context, 0, 'Home'),
              onLongPress: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap:()=>onTap(context, 1, 'Profile'),
              onLongPress: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap:()=>onTap(context, 2, 'Setting'),
              onLongPress: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Setting()));
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap:()=>onTap(context, 0, 'Home'),
              onLongPress: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Login'),
              onTap:()=>onTap(context, 3, 'Login'),
              onLongPress: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()));
              },
            ),
          ],
        ),
      ),
    );
  }
}