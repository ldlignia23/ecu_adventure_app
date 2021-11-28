// To parse this JSON data, do
//
//     final bikes = bikesFromJson(jsonString);

import 'dart:convert';

Bikes bikesFromJson(String str) => Bikes.fromJson(json.decode(str));

String bikesToJson(Bikes data) => json.encode(data.toJson());

class Bikes {
    Bikes({
        this.id,
        this.name,
        this.model,
        this.color,
        this.description,
        this.image,
    });

    int? id;
    String? name;
    String? model;
    String? color;
    String? description;
    String? image;

    factory Bikes.fromJson(Map<String, dynamic> json) => Bikes(
        id: json["Id"],
        name: json["Name"],
        model: json["Model"],
        color: json["Color"],
        description: json["Description"],
        image: json["Image"],
    );

    Map<String, dynamic> toJson() => {
        "Id": id,
        "Name": name,
        "Model": model,
        "Color": color,
        "Description": description,
        "Image": image,
    };
}