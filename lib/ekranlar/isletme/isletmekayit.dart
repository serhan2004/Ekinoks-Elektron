import 'package:ekinoks_elektron/ekranlar/isletme/isletme_urunleri.dart';
import 'package:flutter/material.dart';

TextEditingController? _magazaKonum;
TextEditingController? _tckimlik;
TextEditingController? _magazailtisim;
TextEditingController? _magazahakkinda;
TextEditingController? _magazaisim;

class IsletmeKayit extends StatefulWidget {
  String? isim;
  String? soyisim;

  IsletmeKayit(this.isim, this.soyisim);

  @override
  _IsletmeKayitState createState() => _IsletmeKayitState();
}

class _IsletmeKayitState extends State<IsletmeKayit> {
  @override
  void initState() {
    _magazaKonum = TextEditingController();
    _tckimlik = TextEditingController();
    _magazaisim = TextEditingController();
    _magazailtisim = TextEditingController();
    _magazahakkinda = TextEditingController();
    String? isim;
    String? soyisim;

    super.initState();
  }

  @override
  void dispose() {
    _magazaKonum?.dispose();
    _magazaisim?.dispose();
    _tckimlik?.dispose();
    _magazahakkinda?.dispose();
    _magazailtisim?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Create Your Store",
            style: TextStyle(fontSize: 18),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  labelText: "Mağaza Adın",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  labelText: "Mağaza Adresin",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  labelText: "TC kimlik Numaran",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  labelText: "Mağaza Kategorin",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
