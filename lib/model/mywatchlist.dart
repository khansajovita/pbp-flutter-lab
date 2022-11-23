import 'dart:convert';

List<MyWatchlistItem> myWatchlistFromJson(String str) =>
    List<MyWatchlistItem>.from(
        json.decode(str).map((x) => MyWatchlistItem.fromJson(x)));

String myWatchlistToJson(List<MyWatchlistItem> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MyWatchlistItem {
  MyWatchlistItem({
    required this.model,
    required this.pk,
    required this.fields,
  });

  String model;
  int pk;
  Fields fields;

  factory MyWatchlistItem.fromJson(Map<String, dynamic> json) =>
      MyWatchlistItem(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  Fields({
    required this.watched,
    required this.title,
    required this.rating,
    required this.releaseDate,
    required this.review,
  });

  String watched;
  String title;
  int rating;
  String releaseDate;
  String review;

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        watched: json["watched"],
        title: json["title"],
        rating: json["rating"],
        releaseDate: json["release_date"],
        review: json["review"],
      );

  Map<String, dynamic> toJson() => {
        "watched": watched,
        "title": title,
        "rating": rating,
        "release_date": releaseDate,
        "review": review,
      };
}
