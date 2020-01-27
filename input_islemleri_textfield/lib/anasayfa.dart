import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }
}

class HomePage extends State<Anasayfa>
{

  String girilenMetin="";


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Anasayfa"),
            backgroundColor: Colors.pink,
          ),

          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  TextField(

                    onSubmitted: (String s){ //yazma işlemi tamamlandıktan sonra veriyle işlem yapar
                      debugPrint("On Submit : $s");
                      //işlem bittikten sonra değişkenimizi, girilen veriye eşitliyoruz
                      girilenMetin=s;
                    },

                    onChanged: (String s){   //klavyede yazdıkça anlık veriyle işlem yapar
                      debugPrint("On Change: $s");
                    }

                  ),

                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 200,
                    color: Colors.teal.shade400,
                    child: Align(
                      alignment: Alignment.center,
                      //yukarıda tanımladığımız veriyi gösteriyoruz
                      child: Text(girilenMetin),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ),
    );
  }
}


