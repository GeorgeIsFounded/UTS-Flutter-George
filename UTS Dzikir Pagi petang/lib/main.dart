// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'SplashScreen.dart';
import 'DzikirPagi.dart';
import 'DzikirSore.dart';
import 'DzikirSholat.dart';
import 'DoaBP.dart';
import 'package:dotted_border/dotted_border.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
        title: 'latihan form',
        debugShowCheckedModeBanner: false,
        initialRoute: '/splashScreen',
        routes: {
          // ignore: prefer_const_constructors
          '/splashScreen': (context) => SplashScreen(),
          '/DzikirPagi': (context) => DzikirPagi(),
          '/DzikirSore': (context) => DzikirSore(),
          '/DzikirSholat': (context) => DzikirSholat(),
          '/DoaBP': (context) => DoaBP(),
          // ignore: prefer_const_constructors
          '/': (context) => HomePage(),
        });
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    padding: EdgeInsets.only(left: 245, bottom: 200),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.purple.shade900,
                              Colors.purple.shade800,
                              Colors.purple.shade600,
                              Colors.purple.shade400,
                              Colors.purple.shade300,
                            ]),
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(30))),
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 50,
                        right: 50,
                      ),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Dzikir Pagi dan Petang APP",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Kumpulan bacaan do'a dan dzikir",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "/DzikirPagi");
                            },
                            child: buildDashedBorder(
                                child: Container(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              width: 260,
                              height: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn-icons-png.flaticon.com/512/7151/7151020.png"))),
                            )),
                          ),
                          Text(
                            "Dzikir Pagi",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "/DzikirSore");
                            },
                            child: buildDashedBorder(
                                child: Container(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              width: 260,
                              height: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn-icons-png.flaticon.com/512/6840/6840307.png"))),
                            )),
                          ),
                          Text(
                            "Dzikir Sore",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "/DzikirSholat");
                            },
                            child: buildDashedBorder(
                                child: Container(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              width: 560,
                              height: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn-icons-png.flaticon.com/512/7151/7151242.png"))),
                            )),
                          ),
                          Text(
                            "Dzikir Setelah Sholat Far'du",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDashedBorder({required Widget child}) => DottedBorder(
        radius: Radius.circular(30),
        strokeWidth: 2,
        dashPattern: [16, 4],
        child: child,
        color: Colors.purple,
        borderType: BorderType.RRect,
      );
}
