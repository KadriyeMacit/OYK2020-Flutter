// dart dilinde en genel kütüphanelerden biri olan Material'ı ekliyoruz.
import 'package:flutter/material.dart';

// Yapacağımız bütün işlemler main'in içinde yazılır.
void main() {
  // runApp, Matearial'ın içindeki runApp fonksiyonu ile
  // MaterialApp widget'ını tanımlıyoruz.
  runApp(MaterialApp(
    // Debug yazısını siliyoruz.
    debugShowCheckedModeBanner: false,

    // Uygulamamızın ana temasını burda tanımlıyoruz
      // default olarak gelen mavi rengi değiştiriyoruz
    theme: ThemeData(
      primarySwatch: Colors.yellow,   //AppBar'ın rengini etkiler
      accentColor: Colors.teal //Uygulamanın içine eklediğimiz widgetların rengini etkiler(buton vs.)
    ),

    // uygulamamızın ana kısmına
       // Scaffold(ekran) ekleyerek başlıyoruz.
       // home: new Scaffold diye de yazabiliriz, versiyon farkı
    home: Scaffold(
      // düz beyaz ekrana AppBar ekliyoruz.
      appBar: AppBar(//AppBar'ın özelliklerini belirtiyoruz.
      title: Text(//Text'in özelliklerini belirtiyoruz
      "Flutter dersleri",
        style: TextStyle(fontSize: 20, color: Colors.pink),
      ),

    ),

      //Ekranımızın içinde AppBar ekledikten sonra
        // geriye kalan beyaz ekran yani gövdeyi tanımlıyoruz
      body: Center( // eğer ekranın sadece merkezinde yani ortasında
                        // widgetlarımız olsun istiyorsak Center kullanıyoruz
        child: // Center sadece tek bir widget alabildiği için child ile ekleme yapıyoruz
        FloatingActionButton( //normalde sağ alt köşede duran FloatingActionButton
                                  // Center ile ortada yer alır
          child: // FloatingActionButton da aynı şekilde sadece tek bir widget alabiliyor
          Icon( //Icon'un özelliklerini belirtiyoruz
            Icons.save,  //şeklini seçtik
            size: 15, // boyutunu ayarladık
            //color: Colors.deepOrange,   //yukarda accentColor ile belirtiğimiz rengi istersek değiştirebiliriz
          ),
        ),
      ),
  )
  )
  );

}
