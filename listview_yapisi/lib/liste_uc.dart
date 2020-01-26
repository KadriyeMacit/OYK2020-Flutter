import 'package:flutter/material.dart';

class ResimliListe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Resimli Listeleme"),
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
          leading: CircleAvatar(
            backgroundImage: AssetImage('resimler/elma.jpg'),
          ),
          title: Text('Elma'),
          subtitle: Text('Kırmızı veya yeşil renklere sahiptir'),
        ),
        ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('resimler/erik.jpg'),
            ),
            title: Text('Erik'),
            subtitle: Text('En kütür yaz meyvesidir')
        ),
        ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('resimler/muz.jpg'),
            ),
            title: Text('Muz'),
            subtitle: Text('Her rahatsızlığa iyi gelen kış meyvesidir')
        ),
        ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('resimler/uzum.jpg'),
            ),
            title: Text('Üzüm'),
            subtitle: Text('Çekirdekli veya çekirdeksiz yaz meyvesidir')
        ),

      ],
    );
  }
}