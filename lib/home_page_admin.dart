// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tera/constants.dart';

class HomePageAdmin extends StatefulWidget {
  const HomePageAdmin({super.key});

  @override
  State<HomePageAdmin> createState() => _HomePageAdminState();
}

class _HomePageAdminState extends State<HomePageAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45), color: orange),
                height: 250,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 315,
                            height: 50,
                            child: Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape
                                        .circle, // This makes the container circular
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/Tera2.png"), // Your asset image
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Entrepôt de Keur Massar",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 335,
                            height: 75,
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(
                                  211, 61, 24, 1), // Set the background color
                              borderRadius: BorderRadius.circular(
                                  20), // Adjust the border radius
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/hangar-icon.png",
                                      color: Colors.white,
                                      width: 25,
                                      height: 25,
                                    ), // Replace with your preferred icon
                                    SizedBox(
                                        width:
                                            10), // Spacing between icon and text
                                    Expanded(
                                      child: Text(
                                        "30 Kg d'espace libre",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward_ios,
                                        color: Colors.white), // End icon
                                  ],
                                ),
                                SizedBox(
                                    height: 10), // Spacing between the two rows
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/icons8-expiré-90.png",
                                      color: Colors.white,
                                      width: 25,
                                      height: 23,
                                    ), // Replace with your preferred icon
                                    SizedBox(
                                        width:
                                            10), // Spacing between icon and text
                                    Expanded(
                                      child: Text(
                                        "5 réservations vont expirer dans 7 jours",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward_ios,
                                        color: Colors.white), // End icon
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Items en stock",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: lightGrey,
                  height: 80,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/patate.png',
                        width: 40,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        'assets/les-carottes.png',
                        width: 40,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        'assets/cacahuete.png',
                        width: 40,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Évolution des prix de vente",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/augmenter.png',
                        width: 30,
                      ),
                      Text(
                        '+50f/Kg Riz',
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Image.asset('assets/decrease.png', width: 30),
                      Text(
                        '-25f/Kg Carotte',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
