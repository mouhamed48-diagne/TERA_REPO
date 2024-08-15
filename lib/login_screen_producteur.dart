import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tera/forgotten_password_producteur.dart';
import 'package:tera/functions.dart';
import 'package:tera/inscription.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  bool _isObscure2 = true;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    const Text(
                      'Connexion',
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/logo.png',
                      height: 150,
                      width: 150,
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: 300,
                      height: 57.83,
                      child: TextField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          prefixIcon:
                              const Icon(Icons.call, color: Colors.black),
                          labelText: 'Numéro de téléphone',
                          labelStyle: const TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                        ),
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 300,
                      height: 57.83,
                      child: TextField(
                        obscureText: _isObscure2,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          prefixIcon:
                              const Icon(Icons.key, color: Colors.black),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscure2
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscure2 = !_isObscure2;
                              });
                            },
                          ),
                          labelText: 'Mot de passe',
                          labelStyle: const TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                        ),
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(right: 50, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              children: [
                                TextSpan(
                                  text: "Mot de passe oublié ?",
                                  style: TextStyle(
                                    decoration: TextDecoration.combine([
                                      TextDecoration.underline,
                                    ]),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      changerPage(context, ForgottenPassword());
                                    },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange[900],
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        fixedSize: const Size(173.01, 53.24),
                      ),
                      child: const Text(
                        'Se connecter',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "Pas de compte ? ",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              children: [
                                TextSpan(
                                  text: "Inscrivez vous !",
                                  style: TextStyle(
                                    decoration: TextDecoration.combine([
                                      TextDecoration.underline,
                                    ]),
                                    color: const Color.fromRGBO(247, 72, 29, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      changerPage(context, Inscription());
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
