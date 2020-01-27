import 'package:flutter/material.dart';

class DSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("D Sayfası"),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text("String veri tipi çek"),
                    onPressed: (){
                      Navigator.pop(context, "D sayfasi");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text("Int veri tipi çek"),
                    onPressed: (){
                      Navigator.pop(context, 57);
                    },
                  ),
                )
              ],
            ),
          )
        ));
  }
}
