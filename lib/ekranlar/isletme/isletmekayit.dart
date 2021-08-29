import 'package:ekinoks_elektron/ekranlar/isletme/isletme_urunleri.dart';
import 'package:flutter/material.dart';

class IsletmeKayit extends StatefulWidget {
  const IsletmeKayit({Key? key}) : super(key: key);

  @override
  _IsletmeKayitState createState() => _IsletmeKayitState();
}

class _IsletmeKayitState extends State<IsletmeKayit> {
  TextEditingController? _urunAdi;
  TextEditingController? _urunKategori;
  TextEditingController? _urunUretimTarihi;
  TextEditingController? _urunSkt;
  TextEditingController? _urunFiyat;
  @override
  void initState() {
    _urunAdi = TextEditingController();
    _urunKategori = TextEditingController();
    _urunFiyat = TextEditingController();
    _urunUretimTarihi = TextEditingController();
    _urunSkt = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _urunAdi?.dispose();
    _urunFiyat?.dispose();
    _urunKategori?.dispose();
    _urunSkt?.dispose();
    _urunUretimTarihi?.dispose();
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
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(),
            ),
          ],
        ),
      ),
    );
  }
}
