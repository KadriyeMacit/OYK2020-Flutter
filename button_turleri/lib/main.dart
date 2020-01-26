import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: Text("Buton Türleri"),
          backgroundColor: Colors.deepOrange,
        ),

        body: ButonTurleri(),

      ),
    );
  }
}

class ButonTurleri extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],

      width: 500,
      height: 500,

      child: Column(
        children: <Widget>[
          Text("Buton Türleri"),

          RaisedButton(
            onPressed: (){
              debugPrint("1. butona tıklandı.");
            },
            color: Colors.greenAccent,
            child: Text(
                "Raised Button1"
            ),
          ),

          RaisedButton(
            onPressed: () => debugPrint("2. butona tıklandı."),
            color: Colors.lightBlue[100],
            child: Text(
                "Raised Button2"
            ),
          ),

          RaisedButton(
            onPressed: () => uzakFonksiyon(),
            color: Colors.pink[200],
            child: Text(
                "Raised Button3"
            ),
          ),

          IconButton(
            onPressed: (){
              debugPrint("Icon Button'a tıklandı");
            },
            icon: Icon(
                Icons.all_inclusive,
              color: Colors.black,
              size: 50,
            ),
          ),

          FlatButton(
            onPressed: (){
              debugPrint("Flat Button'a tıklandı.");
            },
            child: Text("Flat Button", style: TextStyle(fontSize: 25),),
          )


        ],
      ),

    );
  }
}

void  uzakFonksiyon() {
  debugPrint("3. butona tıklandı.");
}

