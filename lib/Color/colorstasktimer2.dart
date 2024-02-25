import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorTimer2 extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ColorTimer2({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TimerScreen2(),
    );
  }
}

class TimerScreen2 extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const TimerScreen2({Key? key});

  @override
  // ignore: library_private_types_in_public_api
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen2> {
  int _start = 10;
  late Timer _timer;
  Color cardColor = Colors.red;
  Color cardColor1 = Colors.yellow;
  Color cardColor2 = Colors.green; // Initially set to red

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            _start = 10;
            updateCardColor(); // Call method to update card color
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  String get timerText {
    int minutes = _start ~/ 60;
    int seconds = _start % 60;
    String minutesStr = (minutes < 10) ? '0$minutes' : '$minutes';
    String secondsStr = (seconds < 10) ? '0$seconds' : '$seconds';
    return '$minutesStr:$secondsStr';
  }

  // Method to update card color randomly
  void updateCardColor() {
    Random random = Random();
    List<Color> colors = [Colors.red, Colors.yellow, Colors.green];
    cardColor = colors[random.nextInt(3)];
    cardColor1 = colors[random.nextInt(3)];
    cardColor2 = colors[random.nextInt(3)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Color Challenge",
              style: GoogleFonts.robotoSlab(
                textStyle:
                    const TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              width: 25,
            ),
          ],
        ),
        backgroundColor: Colors.amber,
        toolbarHeight: 80,
        leadingWidth: 50,
      ),
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              Card(
                elevation: 10,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  height: 120,
                  width: 368,
                  child: Column(children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Game Can Refresh 3 minutes one Time",
                      style: GoogleFonts.robotoSlab(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      timerText,
                      style: GoogleFonts.robotoSlab(
                        textStyle: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        updateCardColor(); // Call the method when tapped
                      },
                      child: Container(
                        height: 140,
                        width: 186,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Text(
                            "Red",
                            style: GoogleFonts.robotoSlab(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 140,
                      width: 186,
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                      ),
                      child: Center(
                        child: Text(
                          "Yellow",
                          style: GoogleFonts.robotoSlab(
                            textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                child: Container(
                  height: 140,
                  width: 386,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      "Green",
                      style: GoogleFonts.robotoSlab(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 60,
                  width: 306,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      "Selected Color",
                      style: GoogleFonts.robotoSlab(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: 60,
                  width: 306,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 45, 122, 255),
                  ),
                  child: Center(
                    child: Text(
                      "Bet With This Color ",
                      style: GoogleFonts.robotoSlab(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

