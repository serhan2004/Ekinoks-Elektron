import 'package:ekinoks_elektron/ekranlar/Kart_ekleme_sayfasi.dart';
import 'package:ekinoks_elektron/ekranlar/giris.dart';
import 'package:ekinoks_elektron/ekranlar/harita.dart';
import 'package:ekinoks_elektron/ekranlar/karekod.dart';
import 'package:ekinoks_elektron/ekranlar/kart_sayfasi.dart';
import 'package:ekinoks_elektron/ekranlar/kayit.dart';
import 'package:ekinoks_elektron/ekranlar/odeme_sayfasi.dart';
import 'package:ekinoks_elektron/ekranlar/profil_sayfasi.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        '/': (context)7 => null,
        '/secondRoute': (context) => SecondScreen(),
      },*/
      debugShowCheckedModeBanner: false,
      home: Kayitsayfasi(),
    );
  }
}
