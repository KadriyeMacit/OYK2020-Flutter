import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.pink
      ),

      home: Scaffold(
        appBar: AppBar(
          title: Text("Resim Ekleme Türleri",)
        ),

        body: ImageTurleri(),
      )
    );
  }
}

class ImageTurleri extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.pink[100],
      width: double.infinity,
      height: MediaQuery.of(context).size.height,

      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[

              Expanded(
                child: Container(
                  child: Image.asset("resimler/cicek.jpeg"),
                ),
              ),

              Expanded(
                child: Container(
                  child: Image.network("https://i4.hurimg.com/i/hurriyet/75/750x422/5aa7cdce7af5071efc764ed4.jpg")
                ),
              ),

              Expanded(
                child: Container(
                  child: Image.asset("resimler/cicek.jpeg"),
                ),
              ),

              Expanded(
                child: Container(
                    child: Image.network("https://i4.hurimg.com/i/hurriyet/75/750x422/5aa7cdce7af5071efc764ed4.jpg")
                ),
              ),
            ],
          ),


          Row(
            children: <Widget>[

              Expanded(
                child: Container(
                  color: Colors.white,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage("https://vignette.wikia.nocookie.net/blue-cat-of-nyc/images/d/d0/Sonic.png/revision/latest?cb=20190822171647"),
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  color: Colors.white,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("resimler/cicek.jpeg"),
                  ),
                ),
              ),



              Expanded(
                child: Container(
                  color: Colors.white,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage("https://vignette.wikia.nocookie.net/blue-cat-of-nyc/images/d/d0/Sonic.png/revision/latest?cb=20190822171647"),
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  color: Colors.white,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("resimler/cicek.jpeg"),
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                child:FadeInImage.assetNetwork(
                    placeholder: "resimler/loading.gif",
                    image: "https://vignette.wikia.nocookie.net/blue-cat-of-nyc/images/d/d0/Sonic.png/revision/latest?cb=20190822171647"),
              )

            ],
          )
        ],
      ),

    );

  }

}