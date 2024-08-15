// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tera/constants.dart';
import 'package:tera/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orange,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(
                Icons.menu,
                size: 35,
                color: Colors.white,
              ),
            );
          },
        ),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                icon: Icon(
                  Icons.notifications,
                  size: 35,
                  color: Colors.white,
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: navbar(pageIndex: 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Container(
                  height: 180,
                  color: orange,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 230,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: dark,
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 55,
                    ),
                    Text(
                      'Entrepôt proche',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/user-icon.png',
                                  width: 17,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Ibrahima DIA',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/vente-icon.png',
                                  width: 17,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '5 ventes',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/poids-icon.png',
                                  width: 17,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '350kg',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                          decoration: BoxDecoration(
                              color: jauneClair,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Keur Massar',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/place-icon.png',
                                    width: 17,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '5km',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/hangar-icon.png',
                                    width: 17,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '30kg libre',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/colis-ouvert.png',
                                    width: 17,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '3 items en stock',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ]),
                ),
                Image(
                  image: AssetImage(
                    'assets/logo.png',
                  ),
                  width: 60,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/colis-ouvert.png', width: 20),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Item en stock',
                        style:
                            TextStyle(color: dark, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    color: lightGrey,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/patate.png',
                          width: 30,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Image.asset(
                          'assets/les-carottes.png',
                          width: 30,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Image.asset(
                          'assets/cacahuete.png',
                          width: 30,
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
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Transaction(s) en cours',
                        style:
                            TextStyle(color: dark, fontWeight: FontWeight.bold),
                      ),
                      Expanded(child: Container()),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'voir tout >',
                            style: TextStyle(
                                color: orange, fontWeight: FontWeight.w400),
                          ))
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    color: lightGrey,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              color: dark,
                              child: Image.asset(
                                'assets/patate.png',
                                width: 40,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              color: orange,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '20 kg',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Ibrahima DIA',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '16000f',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'ID Transaction',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: dark,
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 5),
                              child: Text(
                                'afficher plus',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    color: lightGrey,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              color: dark,
                              child: Image.asset(
                                'assets/patate.png',
                                width: 40,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              color: orange,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '20 kg',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Ibrahima DIA',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '16000f',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'ID Transaction',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: dark,
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 5),
                              child: Text(
                                'afficher plus',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    color: lightGrey,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              color: dark,
                              child: Image.asset(
                                'assets/patate.png',
                                width: 40,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              color: orange,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '20 kg',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Ibrahima DIA',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '16000f',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'ID Transaction',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: dark,
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 5),
                              child: Text(
                                'afficher plus',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
