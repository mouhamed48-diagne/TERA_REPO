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
                  margin: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: dark,
                  ),
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
                  Text(
                    'Item en stock',
                    style: TextStyle(color: dark, fontWeight: FontWeight.bold),
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
                        Image.asset(
                          'assets/patate.png',
                          width: 30,
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
