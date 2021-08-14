import 'package:ekinoks_elektron/ekranlar/giris.dart';
import 'package:ekinoks_elektron/ekranlar/karekod.dart';
import 'package:ekinoks_elektron/ekranlar/kayit.dart';
import 'package:ekinoks_elektron/ekranlar/profil_sayfasi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /** 
      * TODO: Named Routes Eklenecek
       routes: {
        '/': (context) => null,
        '/secondRoute': (context) => SecondScreen(),
      },*/
      debugShowCheckedModeBanner: false,
      home: ProfilSayfasi(),
    );
  }
}
