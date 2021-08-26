import 'package:ekinoks_elektron/main.dart';

void FirebasekayitEkle(var isim, var soyisim, var emaill) {
  Map<String, dynamic> kisiekle = Map();
  kisiekle["isim"] = isim;
  kisiekle["soy_isim"] = soyisim;
  kisiekle["email"] = emaill;
  firestore.collection("Users").doc(isim + soyisim).set(kisiekle);
}
