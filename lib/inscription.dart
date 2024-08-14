// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  Inscription({super.key});

  static const IconData phone = IconData(0xe4a2, fontFamily: 'MaterialIcons');
  static const IconData password =
      IconData(0xe47a, fontFamily: 'MaterialIcons');

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 82,
              ),
              Text(
                "Inscription",
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: "Jost",
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 34,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: SizedBox(
                    height: 58.0,
                    width: 317,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(
                            224, 224, 224, 1), // Background color
                        prefixIcon: Icon(
                          Icons.person,
                          size: 23,
                        ), // Icon on the left
                        hintText: 'Prénom', // Placeholder text
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.black, // Border color
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 58.0,
                    width: 317,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(
                            224, 224, 224, 1), // Background color
                        prefixIcon: Icon(
                          Icons.person,
                          size: 23,
                        ), // Icon on the left
                        hintText: 'Nom', // Placeholder text
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.black, // Border color
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 58.0,
                    width: 317,
                    child: TextField(
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(
                            224, 224, 224, 1), // Background color
                        prefixIcon: Icon(
                          Icons.phone,
                          size: 23,
                        ), // Icon on the left
                        hintText: 'Numéro de téléphone', // Placeholder text
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.black, // Border color
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 58.0,
                    width: 317,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(
                            224, 224, 224, 1), // Background color
                        prefixIcon: Icon(
                          Icons.password,
                          size: 23,
                        ), // Icon on the left
                        hintText: 'Mot de passe', // Placeholder text
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.black, // Border color
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 58.0,
                    width: 317,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(
                            224, 224, 224, 1), // Background color
                        prefixIcon: Icon(
                          Icons.password,
                          size: 23,
                        ), // Icon on the left
                        hintText: 'Confirmer mot de passe', // Placeholder text
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.black, // Border color
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () => {},
                child: Text(
                  "S'inscrire",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              // Container(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Handle the button press
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(247, 72, 29, 1),
                        iconColor: Colors.orange, // Background color
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                        ),
                      ),
                      child: Text(
                        "S'inscrire",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        text: "Vous avez un compte? ",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        children: [
                          TextSpan(
                            text: "Connectez vous!",
                            style: TextStyle(
                              color: Color.fromRGBO(247, 72, 29, 1),
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 20,
                  color: Color.fromRGBO(247, 72, 29, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
