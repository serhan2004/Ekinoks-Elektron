import 'package:ekinoks_elektron/main.dart';

void FirebasekayitEkle(var isim, var soyisim, var emaill, bool isletmemi) {
  Map<String, dynamic> kisiekle = Map();
  kisiekle["isim"] = isim;
  kisiekle["soy_isim"] = soyisim;
  kisiekle["email"] = emaill;
  kisiekle["Isletme_Mi"] = isletmemi;
  firestore.collection("Users").doc(isim + soyisim).set(kisiekle);
}
