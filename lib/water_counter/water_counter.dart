import 'package:flutter/material.dart';


class WaterCounter extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<WaterCounter> {
  int _water = 0;
  String _textInfo = "Start drinking water!";

  void _waterChange(int delta) {
    setState(() {
      _water += delta;

      if (_water <= 4) {
        _textInfo = 'Drink more water!';
      } else if (_water <= 7) {
<<<<<<< HEAD
        _textInfo = "Drink more water. \n This amount is insufficient!";
=======
        _textInfo = "You're almost there.\nDrink more water!";
>>>>>>> d928d013e5b9d206be49256ecf367c4a5c81040a
      } else {
        _textInfo = "Congratulations!\nYou drank 2L of water!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/bg-2.jpeg",
            fit: BoxFit.cover,
            height: 1000.0,
          ),
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Water Count: $_water',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _waterChange(1);
                          },
                          child: Container(
                            height: 120.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/full.jpeg",
                                  fit: BoxFit.cover,
                                  height: 80.0,
                                  width: 80.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _waterChange(-1);
                            //
                          },
                          child: Container(
                            height: 120.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/empty.jpeg",
                                  fit: BoxFit.cover,
                                  height: 80.0,
                                  width: 80.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      _textInfo,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}