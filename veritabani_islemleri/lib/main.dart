import 'package:flutter/material.dart';
import 'package:input_islemler/anasayfa.dart';
import 'package:input_islemler/register.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(MyApp());

//artık dinamik bir yapıda olduğu için uygulamamız
//StatefulWidget'a bağlıyoruz
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return InputIslemleri();
  }
}

class InputIslemleri extends State<MyApp>
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
          appBar: AppBar(
            title: Text("Veritabanı İşlemleri"),
            backgroundColor: Colors.pink,
          ),
          body:   LoginEkrani()
      ),
    );
  }
}

class LoginEkrani extends StatelessWidget{

  // Login işlemleri için FirebaseAuth kütüphanesinden
    // bir değişken tanımlıyoruz.
  // instance ile eklediğimiz kütüphanenin methodlarını kullanabiliyoruz
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // girilen veriyi kontrol etmek için
  // TextEditingController nesnesinden bir değişken oluşturuyoruz.
  final emailController = TextEditingController();
  final parolaController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text("Veritabanı işlemlerine hoş geldiniz!",
                      style: TextStyle(
                        fontSize: 20,
                      ), textAlign: TextAlign.center,),
                  ),

                  Container(
                      width:200,
                      height: 200,
                      child: Image.asset("resimler/anime_b.png")),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          keyboardType: TextInputType.emailAddress, //klavye tipi
                          maxLength: 20, //alabilecek max karakter
                          cursorColor: Colors.pink, //imleç rengi
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.wb_sunny), //başına ikon
                              hintText: "Email", //y silik yazı
                              suffixIcon: Icon(Icons.brightness_3), //sonuna ikon
                              labelText: "Kullanıcı adı", //tıklandığında yazarken de hala yukarıda kalır
                              border: OutlineInputBorder(  //dışını kutu içine alır
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10))
                              ),
                              filled: true, // fillColor ile renk kodunu çalıştırmak için true olmalı
                              fillColor: Colors.red.shade50 // arkafonun rengi
                          ),
                          controller: emailController,  // girilen veriyi kontrol etmek için ekliyoruz
                        ),

                        TextField(
                          keyboardType: TextInputType.text,
                          obscureText: true,  //gizlenebilirlik açık
                          maxLength: 8,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.vpn_key),
                            hintText: "Parola",
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                          ),
                          controller: parolaController,
                        ),

                        RaisedButton(
                          child: Text(
                              "Giriş yap"),
                          color: Colors.pink[200],
                          onPressed: (){

                            //yukarıda oluşturduğumuz değişkenle
                            // yapmak istediğimiz işlemin methodunu çağırıyoruz
                                //mail ve parola ile giriş yapmak istediğimizi belirtiyoruz
                            // email kısmına, textfield'da aldığımız veriyi kontrol ettiğimiz değişkeni,
                            //password kısmına da yine textfield'da aldığımız veriyi kontrol ettiğimiz değişkeni yazıyoruz
                            _auth.signInWithEmailAndPassword
                              (email: emailController.text
                                , password: parolaController.text)
                                .then((oturumAcildi){
                                  // then() ile giriş işlemi yapıldıktan sonra sayfa geçişini sağlıyoruz
                              debugPrint("Giriş başarılı");

                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Anasayfa()
                              ));
                            })
                                .catchError((hata) => debugPrint("Hata: "+ hata.toString()));
                            //bildiğimiz try-catch mantığı


                          },
                        ),
                        FlatButton(
                          child: Text("Kayıt ol",
                            style: TextStyle(color: Colors.pink),),
                          onPressed: (){

                            Navigator.push(context,
                              MaterialPageRoute(builder:
                                  (context) => Kayit()),);

                          },
                        )

                      ],
                    ),
                  )



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}

