import 'dart:convert';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}
 class MyHomePage extends StatefulWidget {
   @override
   _MyHomePageState createState() => _MyHomePageState();
 }

 class _MyHomePageState extends State<MyHomePage> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.grey,
       body: FutureBuilder(
         future: DefaultAssetBundle.of(context).loadString("assets/app_json.json"),
         builder: (context, snapshot){
           var myData = json.decode(snapshot.data.toString());
           return Center(
             child: Text(
              myData["name"],
               style: TextStyle(
                 fontSize: 25.0,
                 color: Colors.white,
                 fontWeight: FontWeight.bold
               ),
             ),
           );
         },
       ),
     );
   }
 }
