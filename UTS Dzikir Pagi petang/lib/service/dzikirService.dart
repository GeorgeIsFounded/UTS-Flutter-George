// ignore_for_file: unused_local_variable, file_names

import "package:flutter/services.dart";
import 'package:tugas_my_eat/model/Dzikir.dart';

class DzikirService {
  getDzikirPagi() async{
    final String response = await rootBundle.loadString("assets/json/Dzikir.json");

    // // merubah string menjadi variabel dataFoods
    Dzikir dzikir = dzikirFromJson(response);
    return dzikir.dzikir.dzikirPagi;
  }
  getDzikirSore() async{
    final String response = await rootBundle.loadString("assets/json/Dzikir.json");
    Dzikir dzikir = dzikirFromJson(response);
    return dzikir.dzikir.dzikirSore;
  }
  getDzikirSholat() async{
    final String response = await rootBundle.loadString("assets/json/Dzikir.json");
    Dzikir dzikir = dzikirFromJson(response);
    return dzikir.dzikir.dzikirSholat;
  }
  // getDoaBukaPuasa() async{
  //   final String response = await rootBundle.loadString("assets/json/Dzikir.json");
  //   Dzikir dzikir = dzikirFromJson(response);
  //   return dzikir.dzikir.doaBukaPuasa;
  // }
}