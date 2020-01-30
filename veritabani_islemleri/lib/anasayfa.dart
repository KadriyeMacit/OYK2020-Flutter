import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:input_islemler/main.dart';

class Anasayfa extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }
}

class HomePage extends State<Anasayfa> {

  // Logout işlemleri için FirebaseAuth kütüphanesinden
  // bir değişken tanımlıyoruz.
  // instance ile eklediğimiz kütüphanenin methodlarını kullanabiliyoruz
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Veritabanı işlemleri için Firestore kütüphanesinden
  // bir değişken tanımlıyoruz.
  // instance ile eklediğimiz kütüphanenin methodlarını kullanabiliyoruz
  final Firestore _firestore = Firestore.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anasayfa"),
          backgroundColor: Colors.pink,
        ),

        body: SingleChildScrollView(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[

             Padding(
               padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
               child: FloatingActionButton(
                 child: Icon(Icons.power_settings_new),
                 onPressed: (){

                    _auth.signOut().then((oturumKapatildi){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => MyApp()
                      ));
                      });


                 },
                 mini: true,
                  backgroundColor: Colors.pink[200],
               ),
             ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Container(
                    child: Column(
                      // alt alta sıraladığımız elemanların aynı boyda enlemesine uzun olmasını sağlar
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          width: 400,
                          height: MediaQuery.of(context).size.height/3,
                          child: Image.asset("resimler/anime_a.png"),
                        ),

                        RaisedButton(
                          color: Colors.green[200],
                          child: Text("Veri ekleme"),
                          onPressed: (){

                            //veritabanında map yapısı kullandığımız için
                              //ekleyeceğimiz verileri map şeklinde tanımlıyoruz
                            Map<String, dynamic> veriEkle = Map();
                            veriEkle["isim"] = "kadriye";
                            veriEkle["yas"] = 23;

                            //yukarıda tanımladığımız değişkenle öncellikle
                              //veriyi ekleyeceğimiz koleksiyonu ve dokumenti sırayla belirterek
                            //setData ile ekliyoruz
                            _firestore.collection("kullanıcılar")
                                .document("ogrenci").setData(veriEkle);

                            _firestore.collection("kullanıcılar")
                                .document("ogretmen").setData(veriEkle);

                          },
                        ),

                        RaisedButton(
                          color: Colors.blue[200],
                          child: Text("Veri silme"),
                          onPressed: (){

                            //sileceğimiz verinin nerde olduğunu belirterek
                              //delete methodu ile siliyoruz
                            _firestore.document("kullanıcılar/ogrenci").delete();

                            //map şeklinde verilerimiz olduğu için
                              //upData() metodu içinde sileceğimiz alanı tanımlıyoruz
                           _firestore.document("kullanıcılar/ogretmen")
                            .updateData(
                               {
                                 "isim" : FieldValue.delete()
                               }
                               );

                          },
                        ),

                        RaisedButton(
                          color: Colors.purple[200],
                          child: Text("Veri güncelleme"),

                          onPressed: (){

                            //güncelleme işlemini updateData() metodu ile
                              //güncelleme yapmak istediğimiz alanı yeniden değer atıyoruz
                            _firestore.document("kullanıcılar/ogrenci")
                                .updateData(
                              {
                                "isim" : "onur"
                              }
                            );
                          },
                        ),

                        RaisedButton(
                            color: Colors.red[200],
                          child: Text("Veri okuma"),

                          //tıklandığında yapılacak işlemleri aşağıda
                            // oluşturduğumuz fonksiyonda yazdığımız için fonksiyonu yazıyoruz sadece
                          onPressed: veriOkuma
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),


      ),
    );
  }

  //yukarıda çağırdığımız fonksiyonu yazıyoruz
  Future veriOkuma() async {

    //DocumentSnapshot Future değişken tipi fonksiyon ile kullanılır
    // her document, aslında DocumentSnapshot kütüphanesi ile kullanılır
    // get() ile verilerimizi çekiyoruz
    DocumentSnapshot documentSnapshot =
    await _firestore.document("kullanıcılar/ogrenci").get();

    //oluşturduğumuz değişkenle sadece .data metodunu kullanarak
      //document'in bütün alanlarını okur
    debugPrint("Ogrencinin özellikleri: " +
        documentSnapshot.data.toString());

    //oluşturduğumuz değişkenle sadece .data metodunda okunacak
    //alanı belirtirsek sadece o alanı okur
    debugPrint("Ogrencinin ismi: " +
        documentSnapshot.data["isim"].toString());

     //oluşturduğumuz değişkenle sadece .data metodunda okunacak
     //alanı belirtirsek sadece o alanı okur
    debugPrint("Ogrencinin yaşı: " +
        documentSnapshot.data["yas"].toString());

  }
}


