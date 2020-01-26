import 'package:flutter/material.dart';

import 'liste_bes.dart';
import 'liste_bir.dart';
import 'liste_dort.dart';
import 'liste_iki.dart';
import 'liste_uc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
          body: ListeYapisi(),
        )
    );
  }
}

class ListeYapisi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50), // her iki yan tarafından da 50 birim uzaklık
      child: Column(
        //içindeki butonların uzunluğunu aynı hizada, alt alta hizalar .stretch yapısı ile
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              color: Colors.orange,
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "ListView Türleri",
                style: TextStyle(fontSize: 18, color: Colors.black,),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          RaisedButton(
            child: Text("Basit Listemele"),
            color: Colors.purple[200],
            onPressed: (){
              // başka bir sayfaya geçiş
              // yönlendirdiğimiz sinifi yukarıda import etmeliyiz
              Navigator.push(context,
                MaterialPageRoute(builder:
                    (context) => BasitListe()),);
            },
          ),
          RaisedButton(
            color: Colors.brown[200],
            child: Text("Diziyi Listeleme"),
            onPressed: (){
              // başka bir sayfaya geçiş
              // yönlendirdiğimiz sinifi yukarıda import etmeliyiz
              Navigator.push(context,
                MaterialPageRoute(builder:
                    (context) => DiziliListe()),);
            },
          ),
          RaisedButton(
            color: Colors.blue[200],
            child: Text("Resimli Listeleme"),
            onPressed: (){
              // başka bir sayfaya geçiş
              // yönlendirdiğimiz sinifi yukarıda import etmeliyiz
              Navigator.push(context,
                MaterialPageRoute(builder:
                    (context) => ResimliListe()),);
            },
          ),
          RaisedButton(
            color: Colors.green[200],
            child: Text("Iconlu Listeleme"),
            onPressed: (){
              // başka bir sayfaya geçiş
              // yönlendirdiğimiz sinifi yukarıda import etmeliyiz
              Navigator.push(context,
                MaterialPageRoute(builder:
                    (context) => IconluListe()),);
            },
          ),
          RaisedButton(
            color: Colors.orange[200],
            child: Text("Card Widget'ı ile Listeleme"),
            onPressed: (){
              // başka bir sayfaya geçiş
              // yönlendirdiğimiz sinifi yukarıda import etmeliyiz
              Navigator.push(context,
                MaterialPageRoute(builder:
                    (context) => CardliListe()),);
            },
          ),

        ],
      ),
    );
  }

}
