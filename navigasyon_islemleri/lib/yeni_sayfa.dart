import 'package:flutter/material.dart';

class ASayfasi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("A Sayfası"),
        ),

        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                "A sayfasına hoş geldin!"
              ),


            ],
          ),
        ),
      ),
    );
  }

}