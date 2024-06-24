import 'package:facipay/colors.dart';
import 'package:flutter/material.dart';
import 'package:awesome_card/awesome_card.dart';

class PayPage extends StatefulWidget {
  const PayPage({super.key});

  @override
  State<PayPage> createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Container(
              width: double.infinity,
              height: 45,
              decoration: const BoxDecoration(color: background, boxShadow: [
                BoxShadow(color: navColor, blurRadius: 1, spreadRadius: 1)
              ]),
              child: const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  'Ingrese datos de tarjeta',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      color: buttonColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: CreditCard(
                cardNumber: "5450 7879 4864 7854",
                cardExpiry: "10/28",
                cardHolderName: "",
                cvv: "456",
                bankName: "Chase Bank",
                cardType:
                    CardType.visa, // Optional if you want to override Card Type
                showBackSide: false,
                frontBackground: CardBackgrounds.black,
                backBackground: CardBackgrounds.white,
                showShadow: true,
                textExpDate: 'Exp. Date',
                textName: 'Name',
                textExpiry: 'MM/YY'),
          ),
        ],
      ),
    );
  }
}
