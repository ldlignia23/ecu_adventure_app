// To parse this JSON data, do
//
//     final squares = squaresFromJson(jsonString);

import 'dart:convert';

Squares squaresFromJson(String str) => Squares.fromJson(json.decode(str));

String squaresToJson(Squares data) => json.encode(data.toJson());

class Squares {
    Squares({
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

    factory Squares.fromJson(Map<String, dynamic> json) => Squares(
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