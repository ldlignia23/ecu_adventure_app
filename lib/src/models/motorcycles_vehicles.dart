// To parse this JSON data, do
//
//     final motorcycles = motorcyclesFromJson(jsonString);

import 'dart:convert';

Motorcycles motorcyclesFromJson(String str) => Motorcycles.fromJson(json.decode(str));

String motorcyclesToJson(Motorcycles data) => json.encode(data.toJson());

class Motorcycles {
    Motorcycles({
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

    factory Motorcycles.fromJson(Map<String, dynamic> json) => Motorcycles(
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