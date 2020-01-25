// dart dilinde en genel kütüphanelerden biri olan Material'ı ekliyoruz.
import 'package:flutter/material.dart';

// Yapacağımız bütün işlemler main'in içinde yazılır.
// tek satırda kısaca gösterimi
void main() => runApp(MyApp());

//oluşturduğumuz sınıfı StatelessWidget'a bağlayarak
//uygulamamızın statik bir yapıda olduğunu belirtiyoruz
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // yukarıda kütüphanesini eklediğimiz MaterialApp widget'ını tanımlıyoruz.
    return MaterialApp(
      // Debug yazısını siliyoruz
      debugShowCheckedModeBanner: false,

      // Uygulamamızın ana temasını burda tanımlıyoruz
      // default olarak gelen mavi rengi değiştiriyoruz
      theme: ThemeData(
          primarySwatch: Colors.red
      ),

      // uygulamamızın ana kısmına
      // Scaffold(ekran) ekleyerek başlıyoruz.
      // home: new Scaffold diye de yazabiliriz, versiyon farkı
      home: Scaffold(
        appBar: AppBar(title: Text('Ödev1'),
        ),

        //Ekranımızın içinde AppBar ekledikten sonra
        // geriye kalan beyaz ekran yani gövdeyi tanımlıyoruz
      body: OdevEkrani(), //aşağıda tanımladığımız sınıfı çağırıyoruz

      ),
    );
  }
}

// ekranda göstereceğimiz widgetlar değişmeyeceği için
// yine statik olan StatelessWidget'a bağlıyoruz
class OdevEkrani extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container( // kutu şeklinde düşünebiliriz
      color: Colors.grey,
      width:300,  //enini
      height: 400,  //boyunu ayarlayabiliriz container'ın

      child: //sadece bir tane widget alabilir
      Column(
        // burada Columnda mainAxisAligment satırlara bakarken,
        // crossAxisAligment ise sütunlara bakar. Ters çalışırlar
        // CrossAxisAligment.start, ilk sütuna hizala demektir
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: Colors.green[100],
                  child: Icon(Icons.ac_unit),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.green[300],
                  child: Icon(Icons.watch_later),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.green[500],
                  child: Icon(Icons.airline_seat_flat),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.green[700],
                  child: Icon(Icons.all_inclusive),
                ),
              ]
          ),

          FloatingActionButton(
            backgroundColor: Colors.green[200],
            child: Icon(Icons.apps),
          ),
          FloatingActionButton(
            backgroundColor: Colors.green[300],
            child: Icon(Icons.assistant_photo),
          ),
          FloatingActionButton(
            backgroundColor: Colors.green[500],
            child: Icon(Icons.audiotrack),
          ),
          FloatingActionButton(
            backgroundColor: Colors.green[700],
            child: Icon(Icons.beach_access),
          ),
        ],
      ),
    );
  }

}
