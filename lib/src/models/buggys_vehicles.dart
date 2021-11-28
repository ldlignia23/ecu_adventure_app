// To parse this JSON data, do
//
//     final buggys = buggysFromJson(jsonString);

import 'dart:convert';

Buggys buggysFromJson(String str) => Buggys.fromJson(json.decode(str));

String buggysToJson(Buggys data) => json.encode(data.toJson());

class Buggys {
    Buggys({
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

    factory Buggys.fromJson(Map<String, dynamic> json) => Buggys(
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