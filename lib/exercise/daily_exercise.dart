import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:digital_life_coach/constants.dart';
import 'package:digital_life_coach/exercise/gif/ex1.dart';
import 'package:digital_life_coach/exercise/gif/ex2.dart';
import 'package:digital_life_coach/exercise/gif/ex3.dart';
import 'package:digital_life_coach/exercise/gif/ex4.dart';
import 'package:digital_life_coach/exercise/gif/ex5.dart';
import 'package:digital_life_coach/exercise/gif/ex6.dart';


class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 99,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assets/bg.jpeg"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
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

                                Text("TIME TO EXERCISE! CHOOSE THE ACTIVITY SUITABLE FOR YOU AND GET STARTED!!",
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
                    SizedBox(height: 20),
                    SizedBox(
                      width: size.width * .5, // it just take the 50% width

                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 30,
                      children: <Widget>[
                        SeassionCard(
                          seassionNum: 1,
                          isDone: true,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Exercise1();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionNum: 2,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Exercise2();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionNum: 3,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Exercise3();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionNum: 4,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Exercise4();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionNum: 5,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Exercise5();
                              }),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionNum: 6,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Exercise6();
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
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

                                Text("IT IS IN YOUR HANDS TO HAVE A HEALTHY LIFE BY DOING REGULAR EXERCISE!",
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SeassionCard extends StatelessWidget {
  final int seassionNum;
  final bool isDone;
  final Function press;
  const SeassionCard({
    Key key,
    this.seassionNum,
    this.isDone = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(53),
        child: Container(
          width: constraint.maxWidth / 2 - 10, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(53),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(

                        color: isDone ? kBlueColor : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: kBlueColor),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : kBlueColor,
                      ),
                    ),
                    SizedBox(width: 10),

                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
