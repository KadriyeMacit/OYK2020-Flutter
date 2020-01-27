import 'package:flutter/material.dart';

class BSayfasi extends StatelessWidget{

  String gelenVeri;

  BSayfasi(this.gelenVeri);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("B Sayfası"),
        ),

        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                  gelenVeri
              )
            ],
          ),
        ),
      ),
    );
  }

}