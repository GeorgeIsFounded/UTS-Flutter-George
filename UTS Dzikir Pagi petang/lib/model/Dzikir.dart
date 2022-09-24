// To parse this JSON data, do
//
//     final dzikir = dzikirFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

Dzikir dzikirFromJson(String str) => Dzikir.fromJson(json.decode(str));

String dzikirToJson(Dzikir data) => json.encode(data.toJson());

class Dzikir {
    Dzikir({
        required this.status,
        required this.message,
        required this.dzikir,
    });

    String status;
    String message;
    DzikirClass dzikir;

    factory Dzikir.fromJson(Map<String, dynamic> json) => Dzikir(
        status: json["status"],
        message: json["message"],
        dzikir: DzikirClass.fromJson(json["dzikir"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "dzikir": dzikir.toJson(),
    };
}

class DzikirClass {
    DzikirClass({
        required this.dzikirPagi,
        required this.dzikirSore,
        required this.dzikirSholat,
    });

    List<DzikirPagiElement> dzikirPagi;
    List<DzikirPagiElement> dzikirSore;
    List<DzikirPagiElement> dzikirSholat;

    factory DzikirClass.fromJson(Map<String, dynamic> json) => DzikirClass(
        dzikirPagi: List<DzikirPagiElement>.from(json["dzikirPagi"].map((x) => DzikirPagiElement.fromJson(x))),
        dzikirSore: List<DzikirPagiElement>.from(json["dzikirSore"].map((x) => DzikirPagiElement.fromJson(x))),
        dzikirSholat: List<DzikirPagiElement>.from(json["dzikirSholat"].map((x) => DzikirPagiElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "dzikirPagi": List<dynamic>.from(dzikirPagi.map((x) => x.toJson())),
        "dzikirSore": List<dynamic>.from(dzikirSore.map((x) => x.toJson())),
        "dzikirSholat": List<dynamic>.from(dzikirSholat.map((x) => x.toJson())),
    };
}

class DzikirPagiElement {
    DzikirPagiElement({
        required this.id,
        required this.diBaca,
        required this.nama,
        required this.bacaanArab,
        required this.bacaanLatin,
        required this.arti,
        required this.keterangan,
    });

    int id;
    String diBaca;
    String nama;
    String bacaanArab;
    String bacaanLatin;
    String arti;
    String keterangan;

    factory DzikirPagiElement.fromJson(Map<String, dynamic> json) => DzikirPagiElement(
        id: json["id"],
        diBaca: json["diBaca"],
        nama: json["nama"] == null ? "-" : json["nama"],
        bacaanArab: json["bacaanArab"],
        bacaanLatin: json["bacaanLatin"],
        arti: json["arti"],
        keterangan: json["keterangan"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "diBaca": diBaca,
        "nama": nama,
        "bacaanArab": bacaanArab,
        "bacaanLatin": bacaanLatin,
        "arti": arti,
        "keterangan": keterangan,
    };
}