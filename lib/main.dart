import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
//https://youtu.be/YUkSk_prEtI?list=PLutrh4gv1YI8ap4JO23lN81JOSZJ3i5OO

void main() =>  runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Hubapp',
      home: MyHubappage(),
    );
  }
}

class MyHubappage extends StatefulWidget {
  const MyHubappage({ Key? key }) : super(key: key);

  @override
  _MyHubappageState createState() => _MyHubappageState();
}

class _MyHubappageState extends State<MyHubappage> {

  late DateTime today;

  @override
  void initState() {
    super.initState();
    today = DateTime.now();
  }


  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('Es');
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 26,
              ),
              const SizedBox(
                width: 260,
                child: Text(
                  "My HubApp",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              SizedBox(
                width: 260,
                child: Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          DateFormat.d().format(today),
                          style: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          children:  [
                             Text(
                              DateFormat.EEEE('es_ES').format(today),
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              DateFormat.EEEE('Es').format(today),
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey
                              ),
                            ),
                           ],
                        )
                      ]
                    ),
                  ],
                ),
              ),
              const SizedBox(
                  height: 26
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[400]!,
                          blurRadius: 13,
                          spreadRadius: 1,
                          offset: const Offset(4, 4),
                        ),
                        const BoxShadow(
                          color: Colors.white,
                          blurRadius: 13,
                          spreadRadius: 1,
                          offset: Offset(-4, -4),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[400]!,
                                    blurRadius: 13,
                                    spreadRadius: 1,
                                    offset: const Offset(4, 4),
                                  ),
                                  const BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 13,
                                    spreadRadius: 1,
                                    offset: Offset(-4, -4),
                                  )
                                ],
                              ),
                              child: const Icon(
                                Iconsax.wifi, 
                                size: 18
                              ),
                            ),
                            Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[400]!,
                                    blurRadius: 13,
                                    spreadRadius: 1,
                                    offset: const Offset(4, 4),
                                  ),
                                  const BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 13,
                                    spreadRadius: 1,
                                    offset: Offset(-4, -4),
                                  )
                                ],
                              ),
                              child: const Icon(
                                Iconsax.bluetooth, 
                                size: 18
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[400]!,
                                    blurRadius: 13,
                                    spreadRadius: 1,
                                    offset: const Offset(4, 4),
                                  ),
                                  const BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 13,
                                    spreadRadius: 1,
                                    offset: Offset(-4, -4),
                                  )
                                ],
                              ),
                              child: const Icon(
                                Iconsax.notification, 
                                size: 18
                              ),
                            ),
                            Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[400]!,
                                    blurRadius: 13,
                                    spreadRadius: 1,
                                    offset: const Offset(4, 4),
                                  ),
                                  const BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 13,
                                    spreadRadius: 1,
                                    offset: Offset(-4, -4),
                                  )
                                ],
                              ),
                              child: const Icon(
                                Iconsax.clock, 
                                size: 18
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 24
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[400]!,
                          blurRadius: 13,
                          spreadRadius: 1,
                          offset: const Offset(4, 4),
                        ),
                        const BoxShadow(
                          color: Colors.white,
                          blurRadius: 13,
                          spreadRadius: 1,
                          offset: Offset(-4, -4),
                        ),
                      ],
                    ),
                    child: Column (
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Buenos días,",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        const Text(
                          "Hay música puesta",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 10,
                          width: 100,
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[400]!,
                                blurRadius: 13,
                                spreadRadius: 1,
                                offset: const Offset(4, 4),
                              ),
                              const BoxShadow(
                                color: Colors.white,
                                blurRadius: 13,
                                spreadRadius: 1,
                                offset: Offset(-4, -4),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFC107),
                                  gradient: LinearGradient(
                                    begin:Alignment.centerRight,
                                    end: Alignment.centerLeft,
                                    colors: [
                                      const Color(0xFFFFC107),
                                      Colors.grey.shade300,
                                    ], 
                                  ),
                                  borderRadius: BorderRadius.circular(16)
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const[
                            Icon(
                              Iconsax.backward,
                              size: 20,
                            ),
                            Icon(
                              Iconsax.pause,
                              size: 20, 
                            ),
                            Icon(
                              Iconsax.forward,
                              size: 20, 
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 54,
                            width: 54,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[400]!,
                                  blurRadius: 13,
                                  spreadRadius: 1,
                                  offset: const Offset(4, 4),
                                ),
                                const BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 13,
                                  spreadRadius: 1,
                                  offset: Offset(-4, -4),
                                ),
                              ],
                            ),
                            child: const Icon(
                              Iconsax.search_favorite,
                              size: 18,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Container(
                            height: 54,
                            width: 54,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[400]!,
                                  blurRadius: 13,
                                  spreadRadius: 1,
                                  offset: const Offset(4, 4),
                                ),
                                const BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 13,
                                  spreadRadius: 1,
                                  offset: Offset(-4, -4),
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                "14.2º C",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 54,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[400]!,
                              blurRadius: 13,
                              spreadRadius: 1,
                              offset: const Offset(4, 4),
                            ),
                            const BoxShadow(
                              color: Colors.white,
                              blurRadius: 13,
                              spreadRadius: 1,
                              offset: Offset(-4, -4),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "Puertollano",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              "Nublado",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 16
                  ),
                  Container(
                    height: 120,
                    width: 50,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[400]!,
                          blurRadius: 13,
                          spreadRadius: 1,
                          offset: const Offset(4, 4),
                        ),
                        const BoxShadow(
                          color: Colors.white,
                          blurRadius: 13,
                          spreadRadius: 1,
                          offset: Offset(-4, -4),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFC107),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.bottomCenter,
                          heightFactor: 6.7,
                          child: Text(
                            "26%",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                                    const SizedBox(
                    width: 16
                  ),
                  Container(
                    height: 120,
                    width: 50,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[400]!,
                          blurRadius: 13,
                          spreadRadius: 1,
                          offset: const Offset(4, 4),
                        ),
                        const BoxShadow(
                          color: Colors.white,
                          blurRadius: 13,
                          spreadRadius: 1,
                          offset: Offset(-4, -4),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 80,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFC107),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.bottomCenter,
                          heightFactor: 4.6,
                          child: Icon(
                            Iconsax.volume_high,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ), 
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        margin: const EdgeInsets.only(bottom: 28, left: 34, right: 34),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[400]!,
              blurRadius: 13,
              spreadRadius: 1,
              offset: const Offset(4, 4),
            ),
            const BoxShadow(
              color: Colors.white,
              blurRadius: 13,
              spreadRadius: 1,
              offset: Offset(-4, -4),
            ),
          ],
        ),
        child: const Center(
          child: Text(
            "667 Líneas despues...",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}