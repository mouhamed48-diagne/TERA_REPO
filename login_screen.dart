import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  // Controllers for text fields
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                const Text(
                  'Connexion',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Image.network(
                  'https://static.vecteezy.com/system/resources/previews/000/623/801/original/agriculture-business-logo-template-unique-green-vector-image.jpg',
                  height: 150,
                  width: 150,
                ),
                const SizedBox(height: 50),
                SizedBox(
                  width: 300,
                  height: 57.83,
                  child: TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      prefixIcon: const Icon(Icons.call, color: Colors.black),
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
                const SizedBox(height: 10),
                SizedBox(
                  width: 300,
                  height: 57.83,
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      prefixIcon: const Icon(Icons.key, color: Colors.black),
                      labelText: 'Mot de passe',
                      labelStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                    ),
                    obscureText: true,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Mot de passe oublié?',
                      style: TextStyle(
                        decoration: TextDecoration.combine([
                          TextDecoration.underline,
                        ]),
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    final username = _usernameController.text;
                    final password = _passwordController.text;
                  },
                  child: const Text(
                    'Se connecter',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[900],
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    fixedSize: const Size(173.01, 53.24),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Pas de compte?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Handle registration
                        },
                        child: Text(
                          'Inscrivez vous!',
                          style: TextStyle(
                            decoration: TextDecoration.combine([
                              TextDecoration.underline,
                            ]),
                            color: Colors.orange[900],
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.orange[900],
            height: 40,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
