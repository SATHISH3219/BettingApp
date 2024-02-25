import 'package:bettingapp/Color/colortask.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApps(),
    );
  }
}

class MyApps extends StatefulWidget {
  const MyApps({super.key});

  @override
  State<MyApps> createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: 70,
              width: 300,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      "Betting App",
                      style: GoogleFonts.robotoSlab(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 30)),
                    ),
                    const SizedBox(
                      width: 125,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.account_balance_wallet),
                      iconSize: 34,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://tse3.mm.bing.net/th?id=OIP.p4x8E8BzhRuhpNJc0UJ6sAHaDO&pid=Api&P=0&h=180"),
                ),
                const SizedBox(
                  width: 40,
                ),
                Text(
                  "UserName",
                  style: GoogleFonts.robotoSlab(
                      textStyle: const TextStyle(fontSize: 20)),
                ),
                const SizedBox(
                  width: 120,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                  iconSize: 38,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const Task1cc())));
                      _isExpanded = !_isExpanded;
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shadowColor: Colors.black,
                        elevation: 30,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                          width: 350,
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(
                              colors: [Color(0xff4776e6), Color(0xff8e54e9)],
                              stops: [0.05, 1],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          height: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Color ",
                                      style: GoogleFonts.robotoSlab(
                                          textStyle: const TextStyle(
                                              fontSize: 35,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                    const SizedBox(
                                      width: 80,
                                    ),
                                    Image.asset(
                                      "assets/color.png",
                                      height: 43,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Challenge",
                                      style: GoogleFonts.robotoSlab(
                                          textStyle: const TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 29,
                                ),
                                Text(
                                  " NOTE : There will be Three Colors Choose any color and the time Genrate automatically for 3 minutes click here",
                                  style: GoogleFonts.robotoSlab(
                                      textStyle: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500)),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 350,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.lightBlue),
                    height: 300,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
