// dart dilinde en genel kütüphanelerden biri olan Material'ı ekliyoruz.
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Yapacağımız bütün işlemler main'in içinde yazılır.
void main() {
  // Burada direk MaterialApp'i çağırmak yerine
    // dolaylı yoldan kendi tanımladığımız sınıfı çalıştırıyoruz.
  runApp(MyApp());
}

// flutter'da her şeyin widget olduğunu düşünerek,
// yukarıda tanımladığımız sınıfı widget'a bağlı olan StatefulWidget'a bağlıyoruz
class MyApp extends StatefulWidget {
  // burada State ile dinamik bir yapıda olduğunu belirterek yine dolaylı bir şekilde
// 2. sınıfımızı oluşturuyoruz.
  State<StatefulWidget> createState() => MyApp2();
}

//yukarıda dinamik yapıda olduğunu belirtiğimiz MyApp'e
// 2. tanımladığımız fonksiyonu bağlıyoruz. Böyle bu yapı da dinamik olur.
//Burada State yapısını kullanarak uygulamanın durumunun(dinamik/statik)
// nasıl tanımlandığını görüyoruz.
class MyApp2 extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // yukarıda kütüphanesini eklediğimiz MaterialApp widget'ını tanımlıyoruz.
    return MaterialApp(
      // Debug yazısını siliyoruz
        debugShowCheckedModeBanner: false,

      //burada tema eklemeden uygulamamızı yazıyoruz
      //özellikler flutter'ın kendi belirlediği şekilde
      //default gerçekleşecektir.

        // uygulamamızın ana kısmına
        // Scaffold(ekran) ekleyerek başlıyoruz.
        // home: new Scaffold diye de yazabiliriz, versiyon farkı
        home: Scaffold(
        // düz beyaz ekrana AppBar ekliyoruz.
        appBar: AppBar(//AppBar'ın özelliklerini belirtiyoruz.
        title: Text(//Text'in özelliklerini belirtiyoruz
        "Ekran hizalama örnekleri",
    ),
        ),

            //Ekranımızın içinde AppBar ekledikten sonra
            // geriye kalan beyaz ekran yani gövdeyi tanımlıyoruz
            body: Column( // Ekleyeceğimiz widget'ları alt alta hizalar.
              //mainAxisAligment, Column'da satılara göre ortalıyor
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Colum satırları"),
                FloatingActionButton(
                  backgroundColor: Colors.lightBlueAccent[100],
                  child: Icon(Icons.map,
                  color: Colors.deepOrange,),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.red,
                  child: Icon(Icons.print),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.save,
                  color: Colors.greenAccent,),
                ),//Birden fazla widget alabildiği için
                Row(// Ekleyeceğimiz widget'ları yan yana hizalar
                  //mainAxisAligment, Row'da sütunlara göre ortalıyor
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Row sütunları"),
                    FloatingActionButton(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.star,
                      color: Colors.deepPurple,),
                    ),
                    FloatingActionButton(
                      child: Icon(Icons.wb_sunny,
                      color: Colors.yellow,),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.lightGreenAccent,
                      child: Icon(Icons.brightness_3),
                    ),
                  ],
                ),

              ],
            )));
  }
}
