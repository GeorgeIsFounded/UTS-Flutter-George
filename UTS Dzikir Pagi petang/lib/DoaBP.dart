// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, duplicate_ignore, use_key_in_widget_constructors, file_names, unnecessary_new, unused_import, non_constant_identifier_names
import 'dart:io';

import 'package:flutter/material.dart';
import 'main.dart';

class DoaBP extends StatelessWidget {
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
                    padding: EdgeInsets.only(left: 30, bottom: 200),
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
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 221),
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                minimumSize: Size(45, 45),
                                side: BorderSide(width: 2, color: Colors.white),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            onPressed: () {
                              Navigator.pushNamed(context, "/");
                            },
                            child: Text(
                              "<",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 50, right: 15),
                          child: Text(
                            "Do'a buka puasa",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      height: 738,
                      width: 600,
                      decoration: BoxDecoration(
                        color: Colors.yellow[100],
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(50)),
                      ),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 40, top: 40),
                              child: Text(
                                "Do'a Buka puasa",
                                style: TextStyle(fontSize: 30),
                              )
                            ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Kategori(""),
                                Kategori("")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget Kategori(String kata) {
  return Column(
    children: [
      Container(
        width: 600,
        height: 630,
        margin: EdgeInsets.only(right: 7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 251, 251, 251),
        ),
        child: Center(
            child: Text(
          kata,
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
        )),
      ),
    ],
  );
}
