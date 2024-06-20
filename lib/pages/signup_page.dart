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
        child: Form(
            key: _formkey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 45, left: 45),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Nombre completo',
                        hintStyle: TextStyle(color: navColor),
                        border: OutlineInputBorder()),
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
      ),
    );
  }
}
