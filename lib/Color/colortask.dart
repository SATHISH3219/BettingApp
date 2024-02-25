// ignore_for_file: use_key_in_widget_constructors

import 'package:bettingapp/Color/colorstasktimer2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colortasktimer.dart';

class Task1c extends StatelessWidget {
  const Task1c({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Task1cc(),
    );
  }
}

class Task1cc extends StatefulWidget {
  const Task1cc({Key? key});

  @override
  State<Task1cc> createState() => _Task1ccState();
}

class _Task1ccState extends State<Task1cc> {
  int user = 10;

  void userContest() {
    if (user >= 10) {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Contest started!"),
        ),
      );
      user = 0;
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => const ColorTimer()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Color Challenge",
            style: GoogleFonts.robotoSlab(
              textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          backgroundColor: Colors.amber,
          toolbarHeight: 80,
          leadingWidth: 50,
        ),
        body: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(text: "Contest"),
                Tab(text: "MyContest"),
                Tab(text: "History"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    children: <Widget>[
                      contest("20", "2", "3"),
                      contest("60", "6", "9"),
                      contests("100", "10", "15"),
                      contests("300", "30", "45"),
                    ],
                  ),
                  Container(
                    color: const Color.fromARGB(255, 175, 175, 175),
                  ),
                  Container(
                    color: const Color.fromARGB(255, 21, 18, 12),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget contest(String total, String entry, String price) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Card(
        elevation: 10,
        child: Container(
          height: 150,
          width: 368,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Color Pool",
                      style: GoogleFonts.robotoSlab(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 190,
                    ),
                    Text(
                      "Entry",
                      style: GoogleFonts.robotoSlab(
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "\u{20B9}$total",
                          style: GoogleFonts.robotoSlab(
                            textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 165,
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            if (total == "20" && user == 10) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ColorTimer(),
                                ),
                              );
                            } else if (total == "60") {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ColorTimer(),
                                ),
                              );
                            }
                          },
                          icon: const Icon(
                            Icons.add_box_sharp,
                            color: Colors.amber,
                          ),
                          label: Text(
                            "\u{20B9} $entry",
                            style: GoogleFonts.robotoSlab(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Card(
                elevation: 0,
                child: Container(
                  height: 25,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.looks_one_rounded,
                            size: 25,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "\u{20B9} $price",
                            style: GoogleFonts.robotoSlab(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          const Icon(
                            Icons.emoji_events,
                            size: 25,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "100%",
                            style: GoogleFonts.robotoSlab(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 80,
                          ),
                          const Icon(
                            Icons.task_alt,
                            size: 25,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "flexible",
                            style: GoogleFonts.robotoSlab(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget contests(String total, String entry, String price) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Card(
        elevation: 10,
        child: Container(
          height: 150,
          width: 368,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Color Pool",
                      style: GoogleFonts.robotoSlab(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 190,
                    ),
                    Text(
                      "Entry",
                      style: GoogleFonts.robotoSlab(
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "\u{20B9}$total",
                          style: GoogleFonts.robotoSlab(
                            textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 139,
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            if (total == "100") {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ColorTimer2(),
                                ),
                              );
                            } else if (total == "300") {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ColorTimer2(),
                                ),
                              );
                            }
                          },
                          icon: const Icon(
                            Icons.add_box_sharp,
                            color: Colors.amber,
                          ),
                          label: Text(
                            "\u{20B9} $entry",
                            style: GoogleFonts.robotoSlab(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Card(
                elevation: 0,
                child: Container(
                  height: 25,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.looks_one_rounded,
                            size: 25,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "\u{20B9} $price",
                            style: GoogleFonts.robotoSlab(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          const Icon(
                            Icons.emoji_events,
                            size: 25,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "100%",
                            style: GoogleFonts.robotoSlab(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          const Icon(
                            Icons.task_alt,
                            size: 25,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "flexible",
                            style: GoogleFonts.robotoSlab(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
