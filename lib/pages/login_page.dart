import 'package:facipay/colors.dart';
import 'package:facipay/pages/home_page.dart';
import 'package:facipay/pages/signup_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // user icon
                const Icon(
                  Icons.person_rounded,
                  color: buttonColor,
                  size: 100,
                ),
                const SizedBox(
                  height: 25,
                ),
                // nombre de usuario
                Container(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'Correo o nombre de usuario',
                        hintStyle: TextStyle(color: navColor),
                        border: OutlineInputBorder()),
                  ),
                ),
                // contraseña
                Container(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'Contraseña',
                        hintStyle: TextStyle(color: navColor),
                        border: OutlineInputBorder()),
                  ),
                ),
                // olvidé la contraseña
                Row(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    TextButton(
                        onPressed: () => const Text('empty'),
                        child: const Text('Olvidó usuario o contraseña?'))
                  ],
                ),
                // login button
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: buttonColor),
                  padding: const EdgeInsets.all(5.0),
                  height: 35,
                  width: 115,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    child: const Text(
                      'Iniciar sesión',
                      style: TextStyle(
                          color: background2,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                // No tengo cuenta. Crear cuenta
                Row(
                  children: [
                    const Expanded(
                        child: Align(
                      alignment: Alignment.centerRight,
                      child: Text('No tengo cuenta?'),
                    )),
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(right: 30)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Register()));
                      },
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          ' Regístrese',
                          textAlign: TextAlign.right,
                          // Other text styles here
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
