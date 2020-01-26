import 'package:flutter/material.dart';
import 'package:listview_yapisi/liste_bir.dart';

class IconluListe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("İconlu Listeleme"),
          ),
         body: BodyLayout(),
        )
    );
  }
}

class BodyLayout extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.wb_sunny),
          title: Text('Flutter ve dart dili nedir öğrendik'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: Icon(Icons.brightness_3),
          title: Text('Dart dilinde örnek yaptık'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: Icon(Icons.star),
          title: Text('Temel Widget, Stateless ve Stateful yapılarını öğrendik'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: Icon(Icons.local_florist),
          title: Text('Center, Column, Row, Container gibi ana yapıları kavradık'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: Icon(Icons.airplanemode_active),
          title: Text('Buton türlerini ekledik'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: Icon(Icons.verified_user),
          title: Text('Resim ekleme yollarını gördük'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: Icon(Icons.vpn_key),
          title: Text('Listelemeyi yaptık'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      ],
    );
  }
}