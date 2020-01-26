import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: AyinEvreleri(),
    );
  }
}

class AyinEvreleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Gezegen hareketleri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Ayın Evreleri',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.blueGrey,
                    fontStyle: FontStyle.italic
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("moon/son_hilal.jpg"),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("moon/ilk_dort.jpg"),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("moon/dolunay.jpg"),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("moon/son_dort.jpg"),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("moon/hilal.jpg"),
                ),
              ],
            ),

            Container(
              width: 300,
              height: 300,
              child: FadeInImage.assetNetwork(
                placeholder: "moon/space.gif",
                image: "https://iasbh.tmgrup.com.tr/7f60b7/740/479/0/0/600/387?u=https://isbh.tmgrup.com.tr/sbh/2019/10/01/nasa-gunes-sistemini-sekil-degistirebilen-robotlarla-kesfedecek-1569918612083.jpg",
              ),
            ),

            FlatButton(
              child: Text(
                  "Galaksiye hoş geldiniz!",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: (){
                debugPrint("Flat butona tıklandı!");
              },
            )

          ],
        ),
      ),

    );
  }
}
