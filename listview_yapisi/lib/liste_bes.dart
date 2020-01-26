import 'package:flutter/material.dart';

class CardliListe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Card ile Listeleme"),
          ),
         body: BodyLayout(),
        )
    );
  }
}

class BodyLayout extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child:
          Card(
          margin: EdgeInsets.all(10),
          elevation:20,
          color: Colors.purple[200],
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.person),radius: 15,),
            title: Text("Gizem Ece Çetin"),
            subtitle: Text("Kırıkkale üniversitesi"),
            trailing: Icon(Icons.call),
          ),
        ),
        ),

        Divider(color: Colors.black, height: 30,), //aralarına çizgi tanımlamak için
        //Divider widget'ını tanımlıyoruz

        Container(
          child:
          Card(
            margin: EdgeInsets.all(10),
            elevation:20,
            color: Colors.lightBlue[200],
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.person),radius: 15,),
              title: Text("Mustafa Said Korkmaz"),
              subtitle: Text("Kırıkkale üniversitesi"),
              trailing: Icon(Icons.call),
            ),
          ),
        ),
        Divider(color: Colors.black, height: 30,),
        Container(
          child:
          Card(
            margin: EdgeInsets.all(10),
            elevation:20,
            color: Colors.red[200],
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.person),radius: 15,),
              title: Text("Sezgi Erkılıç"),
              subtitle: Text("Kırıkkale üniversitesi"),
              trailing: Icon(Icons.call),
            ),
          ),
        ),
        Divider(color: Colors.black, height: 30,),

      ],
    );
  }
}