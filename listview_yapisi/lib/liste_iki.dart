import 'package:flutter/material.dart';

class DiziliListe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Dizili Listeleme"),
          ),

          body: BodyLayout(),
        )
    );
  }
}

class BodyLayout extends StatelessWidget{

  final ulkeler = ['Türkiye', 'Almanya','Polonya','Portekiz','İtalya',
    'Fransa','Norveç','İsveç','Macaristan','Japonya',
    'Çin','İngiltere','ABD','Avusturya','Avusturalya', 'Mısır'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ulkeler.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(ulkeler[index]),
          );
        }
    );
  }
}