import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tera/functions.dart';
import 'package:tera/login_screen_producteur.dart';

class Inscription extends StatefulWidget {
  Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  bool _isObscure1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Inscription",
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: "Jost",
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: SizedBox(
                    height: 58.0,
                    width: 317,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Prénom',
                        filled: true,
                        fillColor: const Color.fromRGBO(224, 224, 224, 1),
                        prefixIcon: const Icon(
                          Icons.person,
                          size: 23,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 58.0,
                    width: 317,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        labelText: "Nom",
                        fillColor: const Color.fromRGBO(224, 224, 224, 1),
                        prefixIcon: const Icon(
                          Icons.person,
                          size: 23,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 58.0,
                    width: 317,
                    child: TextField(
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        labelText: 'Numéro de téléphone',
                        filled: true,
                        fillColor: const Color.fromRGBO(224, 224, 224, 1),
                        prefixIcon: const Icon(
                          Icons.phone,
                          size: 23,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: 58.0,
                  width: 317,
                  child: TextField(
                    obscureText: _isObscure1,
                    decoration: InputDecoration(
                      labelText: 'Mot de passe',
                      filled: true,
                      fillColor: const Color.fromRGBO(224, 224, 224, 1),
                      prefixIcon: const Icon(
                        Icons.key,
                        size: 23,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscure1 ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure1 = !_isObscure1;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: 58.0,
                  width: 317,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Confirmer mot de passe',
                      filled: true,
                      fillColor: const Color.fromRGBO(224, 224, 224, 1),
                      prefixIcon: const Icon(
                        Icons.key,
                        size: 23,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscure1 ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure1 = !_isObscure1;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () => {},
                child: const Text(
                  "S'inscrire",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(247, 72, 29, 1),
                        iconColor: Colors.orange,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "S'inscrire",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        text: "Vous avez un compte ? ",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text: "Connectez vous!",
                            style: TextStyle(
                              decoration: TextDecoration.combine([
                                TextDecoration.underline,
                              ]),
                              color: const Color.fromRGBO(247, 72, 29, 1),
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                changerPage(context, LoginScreen());
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.orange[900],
        height: 40,
        width: double.infinity,
      ),
    );
  }
}
