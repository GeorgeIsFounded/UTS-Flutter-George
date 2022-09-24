// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, duplicate_ignore, use_key_in_widget_constructors, file_names, unnecessary_new, unused_import, non_constant_identifier_names, unnecessary_brace_in_string_interps
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tugas_my_eat/model/Dzikir.dart';
import 'package:tugas_my_eat/service/dzikirService.dart';
import 'main.dart';
import 'package:tugas_my_eat/main.dart';

class DzikirSholat extends StatefulWidget {
  const DzikirSholat({Key? key}) : super(key: key);

  @override
  State<DzikirSholat> createState() => _DzikirSholatState();
}

class _DzikirSholatState extends State<DzikirSholat> {
  List<DzikirPagiElement> dataDzikir = [];

  void getDzikirData() {
    DzikirService().getDzikirSholat().then((value) {
      setState(() {
        dataDzikir = value;
        print(dataDzikir);
      });
    });
  }

  @override
  void initState() {
    getDzikirData();
    super.initState();
  }

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
                    padding: EdgeInsets.only(top: 10, left: 16, bottom: 200),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1596193433486-02333accdc13?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJheWluZyUyMG11c2xpbXxlbnwwfHwwfHw%3D&w=1000&q=80"),
                            fit: BoxFit.fitWidth)),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white60,
                                Colors.white10,
                                Colors.white30
                              ]),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              topLeft: Radius.circular(30))),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 346, left: 10),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  minimumSize: Size(40, 45),
                                  side:
                                      BorderSide(width: 1, color: Colors.black),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              onPressed: () {
                                Navigator.pushNamed(context, "/");
                              },
                              child: Text(
                                "<",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, right: 15.7, bottom: 10),
                            child: Text(
                              "Dzikir Sholat",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300),
                            ),
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
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(dataDzikir.length, (index) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        width: 600,
                        height: 800,
                        color: Colors.black26,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Dzikir Ke ${index}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 23),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                dataDzikir[index].nama,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "dibaca ${dataDzikir[index].diBaca}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                dataDzikir[index].bacaanArab,
                                style: TextStyle(fontSize: 25),
                                textAlign: TextAlign.end,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Text(
                                "Latin : ${dataDzikir[index].bacaanLatin}",
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Text(
                                "Artinya : ${dataDzikir[index].arti}",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      );
                    })),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
