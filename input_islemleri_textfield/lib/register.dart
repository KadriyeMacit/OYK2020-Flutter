import 'package:flutter/material.dart';

class Kayit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Giriş Ekranı',
      theme: ThemeData(
          primarySwatch: Colors.pink,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Kayıt Ekranı",
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),),

      ),

    );
  }
}