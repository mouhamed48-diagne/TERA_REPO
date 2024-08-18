import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InfosEntrepot extends StatefulWidget {
  const InfosEntrepot({super.key});

  @override
  State<InfosEntrepot> createState() => _InfosEntrepotState();
}

class _InfosEntrepotState extends State<InfosEntrepot> {
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
      body: Column(
        children: [
          const Center(
            child: Text(
              "Keur Massar",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Container(
            height: 400,
            width: double.infinity,
            decoration:
                const BoxDecoration(color: Color.fromRGBO(36, 36, 36, 1)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    width: double.maxFinite,
                    height: 250,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/image1.png",
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 105,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(247, 72, 29, 1)),
                  child: Center(
                    child: Container(
                      width: 380,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(211, 61, 24, 1),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 190,
                            child: Column(children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Image.asset(
                                    "assets/place-icon.png",
                                    width: 20,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "Insert location",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Image.asset(
                                    "assets/icons8-téléphone-90.png",
                                    width: 20,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "77 777 77 77",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ]),
                          ),
                          SizedBox(
                            width: 190,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                      "assets/colis-ouvert.png",
                                      color: Colors.white,
                                      width: 20,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "3 items en stock",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                      "assets/poids-icon.png",
                                      width: 20,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "30 Kg libre",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                "Items conservables",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 420,
            height: 80,
            decoration:
                const BoxDecoration(color: Color.fromRGBO(217, 217, 217, 1)),
            child: Scrollbar(
              thumbVisibility: true,
              thickness: 5,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    10,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(36, 36, 36, 1),
                              borderRadius: BorderRadius.circular(30)),
                          child: Image.asset(
                            "assets/les-carottes.png",
                            width: 70,
                            height: 10,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 025,
          ),
          const Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                "Items en stock",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 420,
            height: 180,
            decoration:
                const BoxDecoration(color: Color.fromRGBO(36, 36, 36, 1)),
            child: Scrollbar(
              thumbVisibility: true,
              thickness: 10,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: List.generate(5, (index) {
                    return Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/les-carottes.png",
                              width: 40,
                              height: 40,
                            ),
                            const SizedBox(width: 30),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                      style: TextStyle(color: Colors.black),
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
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                      style: TextStyle(color: Colors.green),
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
                                      style: TextStyle(color: Colors.red),
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
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
          height: 60,
          width: double.infinity,
          child: Center(
            child: Container(
              width: 130,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.orange[900],
                  borderRadius: BorderRadius.circular(10)),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: WidgetStateColor.transparent,
                    elevation: WidgetStateProperty.all(0)),
                child: const Text(
                  "Stocker",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )),
    );
  }
}
