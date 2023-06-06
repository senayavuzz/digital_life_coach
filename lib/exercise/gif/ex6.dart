import 'package:flutter/material.dart';
import 'package:digital_life_coach/constants.dart';

class Exercise6 extends StatelessWidget {
  Exercise6();

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.01,
                ),
                const Image(image: AssetImage("assets/ex6.gif"),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  padding: EdgeInsets.all(5),
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 27),
                        blurRadius: 73,
                        spreadRadius: -13,
                        color: kShadowColor,
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            Text("Since the plank is a type of exercise centered on the abdominal muscle, it allows the abdominal region to work!!",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.center,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
        ),

      ),
    );
  }
}

