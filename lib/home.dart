// import 'package:flutter/material.dart';

// class Home extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Container(

//       child: Align(
//         alignment: Alignment.topLeft,
//         child: Text('Calorie Calculator',
//         style: TextStyle(
//           fontSize: 25,
//           fontWeight: FontWeight.bold,
//           color: Colors.black54,
//         )
//         ),
//         //  child:TextField(
//         //     obscureText: true,
//         //     decoration: InputDecoration(
//         //       border: OutlineInputBorder(),
//         //       labelText: 'Input the calories of the meal',
//         //     ),
//         //   )
//         ),

//     );
//   }
// }


// import 'main.dart';
import 'package:flutter/material.dart';
import 'package:simple_drawer/login.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      title: new Text('Home'),
    ),
    body: new Container(
      margin: new EdgeInsets.only(
        top: 50.0
      ),
      alignment: Alignment.center,
      child: new Column(
        children: <Widget>[
          new Text('Welcome to Caloriez!'),
          new FlatButton(
            child: new Text(
              'Logout'
            ),
            onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
              );
            }
          )
        ],
      ),
    ),
  );
}
