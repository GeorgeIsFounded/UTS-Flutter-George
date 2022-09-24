// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers, file_names

import 'dart:async';
// ignore: unused_import
import 'dart:ffi';
import 'package:flutter/material.dart';
// ignore: unused_import

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.pushReplacementNamed(context, '/');
    });
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 70),
                child: Column(
                  children: [
                    Row(
                      children: [Text("KUMPULAN DOA DAN DZIKIR")],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Dzikir Pagi & Petang APP",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                              ),
                            ),
                          ],
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
    ));
  }
}
