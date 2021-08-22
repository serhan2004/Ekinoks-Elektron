import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

String img = "assets/images/arkaplan.jpg";

class GirisEkrani extends StatelessWidget {
  const GirisEkrani({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double _yuvarlanma = 30;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(img),
              Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  AnimatedDefaultTextStyle(
                      child: AnimatedTextKit(animatedTexts: [
                        WavyAnimatedText("Login Up"),
                        WavyAnimatedText("Now")
                      ]),
                      style: TextStyle(fontSize: 18),
                      duration: const Duration(milliseconds: 300)),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 130),
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
                          "Login Up",
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
                            "Forgot Password?",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.italic),
                          ))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
