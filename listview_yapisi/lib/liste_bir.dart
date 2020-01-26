import 'package:flutter/material.dart';

class BasitListe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Basit Listeleme"),
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
      children: ListTile.divideTiles(   //divideTiles ile her item arasına çizgi oluşturuyoruz
        context: context,
        tiles: [ //her ListTile bir itemdir
          ListTile(
            title: Text('1984 - George Orwell'),
          ),
          ListTile(
            title: Text('Beyaz Zambaklar Ülkesinde - Grigoriy Petrov'),
          ),
          ListTile(
            title: Text('Simyacı - Paulo Coelho'),
          ),
          ListTile(
            title: Text('Sineklerin Tanrısı - William Golding'),
          ),
          ListTile(
            title: Text('Dönüşüm - Franz Kafka'),
          ),
          ListTile(
            title: Text('Sırça Fanus - Sylvia Plath'),
          ),
        ],
      ).toList(),
    );
  }
}