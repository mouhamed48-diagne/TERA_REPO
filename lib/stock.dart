import 'package:flutter/material.dart';

class AjoutStock extends StatefulWidget {
  const AjoutStock({super.key});

  @override
  State<AjoutStock> createState() => _AjoutStockState();
}

class _AjoutStockState extends State<AjoutStock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Row(children: [
              Text(
                "En stock",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ]),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(217, 217, 217, 1),
                    ),
                    width: 100,
                    height: 120,
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  size: 23,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromRGBO(36, 36, 36, 1)),
                            width: 78,
                            height: 50,
                            child: const Center(
                              child: Text(
                                "Ajouter",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Row(
                    children: List.generate(
                      3,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 110,
                            padding: const EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(217, 217, 217, 1),
                                  ),
                                  width: 100,
                                  height: 120,
                                  child: Center(
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width: 45,
                                          height: 45,
                                          child: Center(
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: Image.asset(
                                                'assets/cacahuete.png',
                                                width: 35,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: const Color.fromRGBO(
                                                  36, 36, 36, 1)),
                                          width: 78,
                                          height: 50,
                                          child: const Center(
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 3,
                                                ),
                                                Text(
                                                  "100Kg",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white),
                                                ),
                                                Center(
                                                  child: Text(
                                                    "500f/Kg",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text(
                  "Entrepôts utilisés (2)",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(36, 36, 36, 1),
                  borderRadius: BorderRadius.circular(7)),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: List.generate(
                    4,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: 400,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 20,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(36, 36, 36, 1),
                                ),
                                child: const Row(
                                  children: [
                                    Text(
                                      "Keur Massar",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 80,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/image1.png",
                                      height: 80,
                                      width: 111,
                                    ),
                                    Container(
                                      width: 2,
                                      height: 80,
                                      decoration: const BoxDecoration(
                                          color:
                                              Color.fromRGBO(247, 72, 29, 1)),
                                    ),
                                    const SizedBox(
                                      width: 17,
                                    ),
                                    Container(
                                      width: 252,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'assets/icons8-poids-90.png',
                                                width: 25,
                                                height: 25,
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              const Text(
                                                "150 Kg",
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/icons8-colis-ouvert-90.png',
                                                width: 25,
                                                height: 25,
                                                color: Colors.black,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const Text(
                                                "3 items en stock",
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 18,
                                      height: 80,
                                      decoration: const BoxDecoration(
                                          color:
                                              Color.fromRGBO(247, 72, 29, 1)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            const Row(
              children: [
                Text(
                  "Stockage en cours (4)",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(7)),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: List.generate(
                    4,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: 350,
                          height: 70,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(217, 217, 217, 1),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/les-carottes.png",
                                      height: 40,
                                      width: 70,
                                    ),
                                    Container(
                                      width: 1,
                                      height: 80,
                                      decoration: const BoxDecoration(
                                          color:
                                              Color.fromRGBO(247, 72, 29, 1)),
                                    ),
                                    const SizedBox(
                                      width: 17,
                                    ),
                                    Container(
                                      width: 230,
                                      child: Row(
                                        children: [
                                          Container(
                                              width: 140,
                                              height: double.maxFinite,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Image.asset(
                                                        'assets/icons8-poids-90.png',
                                                        width: 25,
                                                        height: 25,
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      const Text(
                                                        "50 Kg",
                                                        style: const TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 13),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                        'assets/hangar-icon.png',
                                                        width: 25,
                                                        height: 25,
                                                        color: Colors.black,
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      const Text(
                                                        "Keur Massar",
                                                        style: const TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 13),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              )),
                                          Container(
                                            width: 90,
                                            height: double.maxFinite,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      'assets/Schedule.png',
                                                      width: 25,
                                                      height: 25,
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    const Text(
                                                      "37 jours",
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 13),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      'assets/icons8-livraison-90.png',
                                                      width: 25,
                                                      height: 25,
                                                      color: Colors.black,
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    const Text(
                                                      "7 jours",
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 13),
                                                    ),
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
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
