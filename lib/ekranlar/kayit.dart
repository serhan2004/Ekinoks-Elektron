import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Kayitsayfasi extends StatelessWidget {
  const Kayitsayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _yuvarlanma = 30;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                              borderRadius: BorderRadius.circular(_yuvarlanma)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
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
                              borderRadius: BorderRadius.circular(_yuvarlanma)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
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
                              borderRadius: BorderRadius.circular(_yuvarlanma)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
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
                            ),
                          )),
                    ),
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
    );
  }
}
