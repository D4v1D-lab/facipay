import 'package:facipay/colors.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // Crear la global key
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text(
              'Registrarse',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Form(
                key: _formkey,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 45, left: 45, top: 5),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'Nombre completo',
                          hintStyle: TextStyle(color: navColor),
                        ),
                        // The validator receives the text that the user has entered.
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Este campo es obligatorio llenarlo';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 45, left: 45, top: 10),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.email),
                          hintText: 'Correo electrónico',
                          hintStyle: TextStyle(color: navColor),
                        ),
                        // The validator receives the text that the user has entered.
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Este campo es obligatorio llenarlo';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 45, left: 45, top: 15),
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.lock),
                          hintText: 'Contraseña',
                          hintStyle: TextStyle(color: navColor),
                          filled: true,
                        ),
                        // The validator receives the text that the user has entered.
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Este campo es obligatorio llenarlo';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 45, left: 45, top: 15, bottom: 25),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.lock),
                          hintText: 'Volver a escribir contraseña',
                          hintStyle: TextStyle(color: navColor),
                          filled: true,
                        ),
                        // The validator receives the text that the user has entered.
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Este campo es obligatorio llenarlo';
                          }
                          return null;
                        },
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Procesando información')));
                          }
                        },
                        child: const Text('Enviar'))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
