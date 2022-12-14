// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, duplicate_ignore, use_key_in_widget_constructors, file_names, unnecessary_new, unused_import, non_constant_identifier_names, unnecessary_brace_in_string_interps
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dzikir_pagi_app/model/Dzikir.dart';
import 'package:dzikir_pagi_app/service/dzikirService.dart';
import 'main.dart';
import 'package:dzikir_pagi_app/main.dart';

class DzikirPagi extends StatefulWidget {
  const DzikirPagi({Key? key}) : super(key: key);

  @override
  State<DzikirPagi> createState() => _DzikirPagiState();
}

class _DzikirPagiState extends State<DzikirPagi> {
  List<DzikirPagiElement> dataDzikir = [];

  void getDzikirData() {
    DzikirService().getDzikirPagi().then((value) {
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      padding: EdgeInsets.only(top: 10, left: 30, bottom: 200),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage("https://i.pinimg.com/originals/cf/b4/4b/cfb44bd6dc864f231ee599cc55d74dc3.jpg"),fit: BoxFit.fitWidth)),
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
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.937,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 200, left: 10),
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      minimumSize: Size(40, 45),
                                      side:
                                          BorderSide(width: 1, color: Colors.black),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30))),
                                  onPressed: () {
                                    Navigator.pop(context, "/");
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
                                margin: EdgeInsets.only(
                                    top: 10, right: 15.7, bottom: 10),
                                child: Text(
                                  "Dzikir Pagi",
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
                        padding: EdgeInsets.symmetric(horizontal: 80),
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
                                style: TextStyle(color: Colors.black, fontSize: 20),
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
                                height: 15,
                              ),
                              Text(
                                "Latin : ${dataDzikir[index].bacaanLatin}",
                                style: TextStyle(fontSize: 17),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Artinya : ${dataDzikir[index].arti}",
                                style: TextStyle(fontSize: 17),
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
