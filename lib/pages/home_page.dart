import 'package:facipay/colors.dart';
import 'package:facipay/pages/light_page.dart';
import 'package:facipay/pages/login_page.dart';
import 'package:facipay/pages/rent_page.dart';
import 'package:facipay/pages/water_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    child: const Icon(Icons.arrow_back),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                  ),
                  //bienvenida
                  const Text(
                    'Bienvenido',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: buttonColor),
                  ),
                  const Text(
                    ' David',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  // Saldo container
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8, left: 8),
                child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                        color: navColor,
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: const Stack(
                      children: [
                        Text('Mi saldo',
                            style: TextStyle(fontSize: 25, color: buttonColor)),
                        Padding(
                            padding: EdgeInsets.only(
                                top: 25), // Adjust the value as needed
                            child: Text('\$250.00',
                                style: TextStyle(
                                    fontSize: 25, color: buttonColor)))
                      ],
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                        height: 60,
                        width: 90,
                        decoration: BoxDecoration(
                            color: background2,
                            borderRadius: BorderRadius.circular(8)),
                        alignment: const Alignment(0.25, 0.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const RentPage()));
                          },
                          child: const Stack(
                            children: [
                              Icon(Icons.home),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 25), // Adjust the value as needed
                                  child: Text(
                                    'Renta',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: buttonColor),
                                  ))
                            ],
                          ),
                        )),
                  ),
                  Container(
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                          color: background2,
                          borderRadius: BorderRadius.circular(8)),
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LightPage()));
                        },
                        child: const Stack(
                          children: [
                            Icon(Icons.lightbulb),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: 25), // Adjust the value as needed
                                child: Text('Luz',
                                    style: TextStyle(color: buttonColor)))
                          ],
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 60,
                        width: 90,
                        decoration: BoxDecoration(
                            color: background2,
                            borderRadius: BorderRadius.circular(8)),
                        alignment: const Alignment(0.15, 0.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const WaterPage()));
                          },
                          child: const Stack(
                            children: [
                              Icon(Icons.water_drop),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 25), // Adjust the value as needed
                                  child: Text('Agua',
                                      style: TextStyle(color: buttonColor)))
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
