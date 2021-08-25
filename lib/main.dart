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

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _init = Firebase.initializeApp();
    return FutureBuilder(
      future: _init,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorWidget(Error);
        } else if (snapshot.hasData) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Kayitsayfasi(),
          );
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Center(
                child: Text("Loading"),
              ),
            ),
          );
        }
      },
    );
  }
}
