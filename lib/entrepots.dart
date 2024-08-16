import 'package:flutter/material.dart';
import 'package:tera/navbar.dart';

class Entrepots extends StatefulWidget {
  Entrepots({super.key});

  @override
  State<Entrepots> createState() => _EntrepotsState();
}

class _EntrepotsState extends State<Entrepots> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const Icon(
                Icons.menu,
                size: 35,
                color: Colors.black,
              ),
            );
          },
        ),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                icon: const Icon(
                  Icons.notifications,
                  size: 35,
                  color: Colors.black,
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: const navbar(pageIndex: 0),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/image1.png",
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(36, 36, 36, 0.9),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
              ),
              padding: EdgeInsets.zero,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "Les Entrepôts disponibles",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 34,
                    width: 185,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(247, 72, 29, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.only(left: 8),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.search),
                            color: const Color.fromRGBO(255, 255, 255, 0.7),
                          ),
                          hintText: "Chercher...",
                          hintStyle: const TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.7))),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(4, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            width: 110,
                            padding: const EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  child: Image.asset(
                                    "assets/image1.png", // Replace with actual image asset
                                    width: double.infinity,
                                    height: 79,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  color: Colors.orange[900],
                                  height: 6,
                                  width: double.infinity,
                                ),
                                const Text(
                                  "Keur Massar",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: [
                                    const SizedBox(width: 10),
                                    Image.asset(
                                      'assets/hangar-icon.png',
                                      width: 20,
                                      height: 20,
                                      color: Colors.black,
                                    ),
                                    const SizedBox(width: 10),
                                    const Text(
                                      "30% libre",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Column(
                      children: [
                        const Text(
                          "Items en stock",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange[900],
                          ),
                          child: const Text(
                            "Gérer",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 10),
                        // List of items
                        Column(
                          children: List.generate(3, (index) {
                            return Card(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/les-carottes.png",
                                      width: 40,
                                      height: 40,
                                    ),
                                    const SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              "assets/poids-icon.png",
                                              width: 20,
                                              height: 20,
                                              color: Colors.black,
                                            ),
                                            const SizedBox(width: 5),
                                            const Text(
                                              "50 Kg",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 5),
                                        Row(
                                          children: [
                                            Image.asset(
                                              "assets/icons8-coeur-en-bonne-santé-90.png",
                                              width: 20,
                                              height: 20,
                                              color: Colors.black,
                                            ),
                                            const SizedBox(width: 5),
                                            const Text(
                                              "Bon état",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              "assets/icons8-flèche-bas-90.png",
                                              width: 20,
                                              height: 20,
                                            ),
                                            const SizedBox(width: 5),
                                            const Text(
                                              "+3 Kg aujourd'hui",
                                              style: TextStyle(
                                                  color: Colors.green),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 5),
                                        Row(
                                          children: [
                                            Image.asset(
                                              "assets/UpArrow.png",
                                              width: 20,
                                              height: 20,
                                            ),
                                            const SizedBox(width: 5),
                                            const Text(
                                              "-10 Kg dans 7 jours",
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
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
    );
  }
}
