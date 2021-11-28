// To parse this JSON data, do
//
//     final reservation = reservationFromJson(jsonString);

import 'dart:convert';

Reservation reservationFromJson(String str) => Reservation.fromJson(json.decode(str));

String reservationToJson(Reservation data) => json.encode(data.toJson());

class Reservation {
    Reservation({
        this.id,
        this.idBicle,
        this.idUser,
        this.hours,
        this.price,
        this.total,
    });

    int? id;
    int? idBicle;
    String? idUser;
    int? hours;
    double? price;
    double? total;

    factory Reservation.fromJson(Map<String, dynamic> json) => Reservation(
        id: json["Id"],
        idBicle: json["Id_Bicle"],
        idUser: json["Id_User"],
        hours: json["Hours"],
        price: json["Price"].toDouble(),
        total: json["Total"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "Id": id,
        "Id_Bicle": idBicle,
        "Id_User": idUser,
        "Hours": hours,
        "Price": price,
        "Total": total,
    };
}