import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:input_islemler/main.dart';

class Kayit extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }
}

class HomePage extends State<Kayit> {
  // Register işlemleri için FirebaseAuth kütüphanesinden
  // bir değişken tanımlıyoruz.
  // instance ile eklediğimiz kütüphanenin methodlarını kullanabiliyoruz
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final kayitEmailController = TextEditingController();
  final kayitParolaController = TextEditingController();
  final isimController = TextEditingController();
  final parolaTekrarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Kayıt Ekranı"),
          backgroundColor: Colors.pink,
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 15, 30, 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextField(
                    keyboardType: TextInputType.text, //klavye tipi
                    cursorColor: Colors.pink, //imleç rengi
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.face),
                        //başına ikon
                        hintText: "İsim",
                        //y silik yazı
                        suffixIcon: Icon(Icons.toys),
                        //sonuna ikon
                        labelText: "Kullanıcı adı",
                        //tıklandığında yazarken de hala yukarıda kalır
                        border: OutlineInputBorder(
                            //dışını kutu içine alır
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        filled: true,
                        // fillColor ile renk kodunu çalıştırmak için true olmalı
                        fillColor: Colors.red.shade50 // arkafonun rengi
                        ),
                    controller:
                        isimController, // girilen veriyi kontrol etmek için ekliyoruz
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress, //klavye tipi
                    cursorColor: Colors.pink, //imleç rengi
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        //başına ikon
                        hintText: "Email",
                        //y silik yazı
                        suffixIcon: Icon(Icons.done),
                        //sonuna ikon
                        labelText: "Email adresi",
                        //tıklandığında yazarken de hala yukarıda kalır
                        border: OutlineInputBorder(
                            //dışını kutu içine alır
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        filled: true,
                        // fillColor ile renk kodunu çalıştırmak için true olmalı
                        fillColor: Colors.red.shade50 // arkafonun rengi
                        ),
                    controller:
                        kayitEmailController, // girilen veriyi kontrol etmek için ekliyoruz
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true, //gizlenebilirlik açık
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.vpn_key),
                      hintText: "Parola",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    controller: kayitParolaController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true, //gizlenebilirlik açık
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.vpn_key),
                      hintText: "Parola Tekrar",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    controller: parolaTekrarController,
                  ),
                ),
                RaisedButton(
                  child: Text("Kaydet"),
                  color: Colors.pink[200],
                  onPressed: () {
                    // bütün alanların dolu olup olmadığının kontrolünü yapıyoruz öncelikle
                    // trim(), başındaki veya sonundaki boşlukları tolere eder
                    if (isimController.text.trim().isNotEmpty &&
                        kayitEmailController.text.trim().isNotEmpty &&
                        kayitParolaController.text.trim().isNotEmpty &&
                        parolaTekrarController.text.trim().isNotEmpty) {
                      //boş alanları kontrol ettikten sonra parolanın tutarlılığını
                      //kontrol ediyoruz.
                      if (kayitParolaController.text
                              .trim()
                              == parolaTekrarController.text.trim())
                      //eğer iki alana da yazılan parolalar uyuşuyorsa kayıt işlemini yapıyoruz
                      {
                        _auth.createUserWithEmailAndPassword(
                                email: kayitEmailController.text,
                                password: kayitParolaController.text)
                            .catchError((hata) =>
                                debugPrint("HATA: " + hata.toString()));

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                      }
                      else
                        {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Kayıt oluşturulamadı"),
                                content: Text("Parolalar eşleşmiyor"),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text("Kapat"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  )
                                ],
                              );
                            });
                      }
                    }
                    else {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Kayıt oluşturulamadı"),
                              content: Text("Boş alan bırakmayınız!"),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text("Kapat"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            );
                          });
                    }
                  },
                ),
                Container(
                  width: 400,
                  height: MediaQuery.of(context).size.height / 3,
                  child: Image.asset("resimler/anime_c.png"),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
