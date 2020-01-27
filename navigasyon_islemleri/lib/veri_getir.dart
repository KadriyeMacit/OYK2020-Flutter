import 'package:flutter/material.dart';

class CSayfasi extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return WillPopScope(

      onWillPop: (){
        debugPrint("Butona basmadan geri döndü");
        Navigator.pop(context, true);
        return Future.value(false);
      },


      child: Scaffold(
        appBar: AppBar(
          title: Text("C Sayfasi"),
        ),

        body: Center(
          child: Column(
            children: <Widget>[
              Text("C sayfasına hoş geldiniz!"),

              RaisedButton(
                onPressed: (){
                  Navigator.pop<bool>(context,false);
                },
                child: Text(
                  "Anasayafa dön ve veri gönder"
                ),
                color: Colors.deepPurple[200],
              )
            ],
          ),
        ),

      ),
    );
  }

}