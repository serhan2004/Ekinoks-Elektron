import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Kayitsayfasi extends StatefulWidget {
  const Kayitsayfasi({Key? key}) : super(key: key);

  @override
  _KayitsayfasiState createState() => _KayitsayfasiState();
}

class _KayitsayfasiState extends State<Kayitsayfasi> {
  var _formanahtari = GlobalKey<FormState>();
  var _name = TextEditingController();
  var _surname = TextEditingController();
  var email = TextEditingController();
  var pass = TextEditingController();
  String? _email;
  String? _pass;
  @override
  Widget build(BuildContext context) {
    double _yuvarlanma = 30;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formanahtari,
            child: Center(
              child: Stack(
                children: [
                  Image.asset("assets/images/arkaplan.jpg"),
                  Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        child: AnimatedDefaultTextStyle(
                            child: AnimatedTextKit(animatedTexts: [
                              WavyAnimatedText("Sign Up"),
                              WavyAnimatedText("Now")
                            ]),
                            style: TextStyle(fontSize: 18),
                            duration: const Duration(milliseconds: 300)),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width / 2.2,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(140, 0, 0, 0),
                                    borderRadius:
                                        BorderRadius.circular(_yuvarlanma)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    validator: (alinanisim) {
                                      if (alinanisim!.length < 3) {
                                        return "Can't be shorter than three letters";
                                      } else {
                                        return null;
                                      }
                                    },
                                    cursorColor: Colors.green,
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                          fontSize: 17,
                                          color: Colors.grey,
                                          letterSpacing: 2,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w400),
                                      hintText: "Name",
                                      border: InputBorder.none,
                                    ),
                                    onChanged: (var alinanveri) {
                                      setState(() {
                                        alinanveri = _name.text;
                                      });
                                    },
                                  ),
                                )),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width / 2.2,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(140, 0, 0, 0),
                                    borderRadius:
                                        BorderRadius.circular(_yuvarlanma)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    validator: (alinansurname) {
                                      if (alinansurname!.length < 3) {
                                        return "Can't be shorter than three letters";
                                      } else {
                                        return null;
                                      }
                                    },
                                    cursorColor: Colors.green,
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                          fontSize: 17,
                                          color: Colors.grey,
                                          letterSpacing: 2,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w400),
                                      hintText: "Surname",
                                      border: InputBorder.none,
                                    ),
                                    onChanged: (var alinanveri) {
                                      setState(() {
                                        alinanveri = _surname.text;
                                      });
                                    },
                                  ),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(140, 0, 0, 0),
                                borderRadius:
                                    BorderRadius.circular(_yuvarlanma)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                validator: (alinanmail) {
                                  return alinanmail!.contains("@")
                                      ? null
                                      : "Invalid Mail";
                                },
                                cursorColor: Colors.green,
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey,
                                      letterSpacing: 2,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w400),
                                  hintText: "E-mail",
                                  border: InputBorder.none,
                                ),
                                onChanged: (var alinanveri) {
                                  setState(() {
                                    alinanveri = email as String;
                                  });
                                },
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(140, 0, 0, 0),
                                borderRadius:
                                    BorderRadius.circular(_yuvarlanma)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                validator: (alinansifre) {
                                  // return alinansifre?.length.toInt() <= 6 ? null : "Enter at least six characters";
                                  if (alinansifre!.length < 6) {
                                    return "En az altı karakter gir";
                                  } else {
                                    return null;
                                  }
                                },
                                obscureText: true,
                                cursorColor: Colors.green,
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey,
                                      letterSpacing: 2,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w400),
                                  hintText: "Password",
                                  border: InputBorder.none,
                                ),
                                onChanged: (var alinanveri) {
                                  setState(() {
                                    alinanveri = pass as String;
                                  });
                                },
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      /* Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(140, 0, 0, 0),
                                borderRadius:
                                    BorderRadius.circular(_yuvarlanma)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                validator: (alinansifre2) {
                                  if (alinansifre2 == pass.text) {
                                    return null;
                                  } else {
                                    return "Şifreler farklı";
                                  }
                                },
                                obscureText: true,
                                cursorColor: Colors.green,
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey,
                                      letterSpacing: 2,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w400),
                                  hintText: "Password",
                                  border: InputBorder.none,
                                ),
                                onChanged: (var alinanveri) {
                                  setState(() {
                                    alinanveri = _pass2.text;
                                  });
                                },
                              ),
                            )),
                      ),*/
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 40, horizontal: 100),
                        child: Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(_yuvarlanma),
                          ),
                          child: GestureDetector(
                            onTap: kayitEkle,
                            child: Center(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Already have an account?",
                                style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 1.5,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300),
                              ))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void kayitEkle() {
    if (_formanahtari.currentState!.validate()) {
      Fluttertoast.showToast(msg: "Kayit Basarili");
      // ignore: unnecessary_statements
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: email.text, password: pass.text)
          .then((user) {})
          .catchError((hata) {
        Fluttertoast.showToast(msg: hata, gravity: ToastGravity.BOTTOM);
      });
    }
  }
}
