import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double red =255.0;
  double green =255.0;
  double blue = 255.0;
  @override
  Widget build(BuildContext context) {
  MediaQueryData _queryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(red.round(), green.round(), blue.round(),1),
      appBar: AppBar(
        backgroundColor: Colors.white70,
        elevation: 0.5,
        title: Text('Color Mixer',style:TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: (){
            setState(() {
               var randomizer = Random();
                   var r = randomizer.nextInt(255);
                   print(r);
                   var g = randomizer.nextInt(255);
                   print(g);
                   var b = randomizer.nextInt(255);
                   print(b);
                   red = r.roundToDouble();
                   green = g.roundToDouble();
                   blue = b.roundToDouble();
            });
          },
          child: Column(
            children: <Widget>[
              SizedBox(height: 30,),
              Row(
                children: <Widget>[
                  Text('Red',style:TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                  SizedBox(width: 20,),
                  Container(
                    width: _queryData.size.width-75,
                    child: CupertinoSlider(
                      value: red,
                      activeColor: Colors.red,
                      thumbColor: Colors.red,
                      onChanged: (value){
                         setState(() {
                           red=value;
                         });
                    },
                    min: 0,
                    max: 255,
                    divisions: 255,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Text('Green',style:TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                  SizedBox(width: 5,),
                  Container(
                     width: _queryData.size.width-80,
                    child: CupertinoSlider(
                      value: green,
                      activeColor: Colors.green,
                      thumbColor: Colors.green,
                      onChanged: (value){
                         setState(() {
                           green=value;
                         });
                    },
                    min: 0,
                    max: 255,
                    divisions: 255,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Text('Blue',style:TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                  SizedBox(width: 17,),
                  Container(
                     width: _queryData.size.width-75,
                    child: CupertinoSlider(
                      value: blue,
                      activeColor: Colors.blue,
                      thumbColor: Colors.blue,
                      onChanged: (value){
                         setState(() {
                           blue=value;
                         });
                    },
                    min: 0,
                    max: 255,
                    divisions: 255,
                    ),
                  ),
                ],
              )
            ],),
        ),
      ),
      
    );
  }
}