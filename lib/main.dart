import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';

void main(){
  runApp(new MaterialApp(
    home: new Splashscreen(),
    routes: <String, WidgetBuilder>{
       '/Home' : (BuildContext context) => new Home(),

    },
  ));
}


class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  //metod untuk pindah halaman
  void movePage(){
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) =>Home()
        )
    );
  }

  navigationPage() async{
    var _durasi = new Duration(seconds: 5);

    return new Timer(_durasi, movePage);
  }
  @override
  void initState (){
    super.initState();
    navigationPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        child: Center(
          child: Text('WELCOME', 
          style: TextStyle(
            color: Colors.white, 
            fontSize: 30,
            fontWeight: FontWeight.bold,
            ),
          ),   
         ),
      )
      );
  }
}