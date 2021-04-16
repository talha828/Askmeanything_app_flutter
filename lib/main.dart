import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  int num=1;
 void change (){
   setState(() {
      num = Random().nextInt(5)+1;
   });
 }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:Center(child: Text(" Ask me anything")),
        ),
        body:Center(child:
         FlatButton(onPressed: (){
           change();
         }, child:
         Image.asset('images/ball$num.png')
         )
        )
      ),
    );
  }
}
