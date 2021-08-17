import 'package:awesome_card/awesome_card.dart';
import 'package:flutter/material.dart';

class KartEklemeSayfasi extends StatelessWidget {
  const KartEklemeSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CreditCard(
                  cardNumber: "5450 7879 4864 7854",
                  cardExpiry: "10/25",
                  cardHolderName: "Card Holder",
                  cvv: "456",
                  bankName: "Axis Bank",
                  cardType: CardType
                      .masterCard, // Optional if you want to override Card Type
                  showBackSide: false,
                  frontBackground: CardBackgrounds.black,
                  backBackground: CardBackgrounds.white,
                  showShadow: true,
                  textExpDate: 'Exp. Date',
                  textName: 'Name',
                  textExpiry: 'MM/YY'),
              SizedBox(
                height: 15,
              ),
              Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(140, 0, 0, 0),
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: true,
                      cursorColor: Colors.green,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            letterSpacing: 2,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w400),
                        hintText: "E-mail",
                        border: InputBorder.none,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
