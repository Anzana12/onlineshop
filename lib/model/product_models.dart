// To parse this JSON data, do
//
//     final detailProduct = detailProductFromJson(jsonString);

import 'dart:convert';

List<DetailProduct> detailProductFromJson(String str) =>
    List<DetailProduct>.from(
        json.decode(str).map((x) => DetailProduct.fromJson(x)));

String detailProductToJson(List<DetailProduct> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DetailProduct {
  // int id;
  String title;
  String imageUrls;
  String ratingString;
  String priceString;

  DetailProduct({
    // required this.id,
    required this.title,
    required this.imageUrls,
    required this.ratingString,
    required this.priceString,
  });

  factory DetailProduct.fromJson(Map<String, dynamic> json) => DetailProduct(
        // id: json["id"],
        title: json["title"],
        imageUrls: json["imageUrls"],
        ratingString: json["ratingString"],
        priceString: json["priceString"],
      );

  Map<String, dynamic> toJson() => {
        // "id": id,
        "title": title,
        "imageUrls": imageUrls,
        "ratingString": ratingString,
        "priceString": priceString,
      };
}
