import 'package:flutter/material.dart';


// class Setting extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Text('Setting',
//         style: TextStyle(
//           fontSize: 25,
//           fontWeight: FontWeight.bold,
//         )
//         ),
//         ),
//     );
//   }
// }

class Setting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // appBar: new AppBar(
    //   title: Text('Settings Page'),
    // );
    return Scaffold(
        body: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),

            ListTile(
              leading: Icon(Icons.accessibility),
              title: Text('Accessibility'),
            ),

            ListTile(
              leading: Icon(Icons.add_location),
              title: Text('Add Location'),
            ),

            ListTile(
              leading: Icon(Icons.analytics),
              title: Text('Food Stats'),
            ),

            ListTile(
              leading: Icon(Icons.admin_panel_settings),
              title:Text('Security'),
            ),

            ListTile(
              leading: Icon(Icons.watch_rounded),
              title: Text('Integrate with Smartwatch'),
            ),

            ListTile(
              leading: Icon(Icons.add_a_photo_rounded),
              title: Text('Add a food via photo'),
            ),
          ],
        )
    );
  }}