import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:digital_life_coach/constants.dart';
import 'package:digital_life_coach/exercise/daily_exercise.dart';
import 'package:digital_life_coach/timer/timer.dart';
import 'package:digital_life_coach/water_counter/water_counter.dart';
import 'package:digital_life_coach/widgets/category_card.dart';
import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:digital_life_coach/todo/layout/app_layout.dart';
import 'package:digital_life_coach/todo/shared/cubit_observer/observer.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'digital_life_coach',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      appBar: CalendarAppBar(

        onDateChanged: (value) => print(value),
        firstDate: DateTime.now().subtract(Duration(days: 140)),
        lastDate: DateTime.now(),

      ),

      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .75,
            decoration: BoxDecoration(
              color: kBackgroundColor,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Exercise",
                          svgSrc: "assets/icons/ex.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailsScreen();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Kegel Exercises",
                          svgSrc: "assets/icons/tim.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Counter();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Meditation",
                          svgSrc: "assets/icons/water.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return WaterCounter();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Yoga",
                          svgSrc: "assets/icons/todo.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return AppLayout();
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
