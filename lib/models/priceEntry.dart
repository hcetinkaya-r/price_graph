// To parse this JSON data, do
//
//     final priceEntry = priceEntryFromJson(jsonString);



import 'package:finfree_price_graph/models/the1A.dart';
import 'package:finfree_price_graph/models/the1G.dart';
import 'package:finfree_price_graph/models/the1H.dart';
import 'package:finfree_price_graph/models/the1Y.dart';
import 'package:finfree_price_graph/models/the3A.dart';
import 'package:finfree_price_graph/models/the5Y.dart';

//PriceEntry priceEntryFromJson(String str) => PriceEntry.fromJson(json.decode(str));

//String priceEntryToJson(PriceEntry data) => json.encode(data.toJson());

class PriceEntry {
  PriceEntry({
    this.the1G,
    this.the1H,
    this.the1A,
    this.the3A,
    this.the1Y,
    this.the5Y,
  });

  List<The1G> the1G;
  List<The1H> the1H;
  List<The1A> the1A;
  List<The3A> the3A;
  List<The1Y> the1Y;
  List<The5Y> the5Y;

  factory PriceEntry.fromJson(Map<String, dynamic> json) => PriceEntry(
    the1G: List<The1G>.from(json["1G"].map((x) => The1G.fromJson(x))),
    the1H: List<The1H>.from(json["1H"].map((x) => The1H.fromJson(x))),
    the1A: List<The1A>.from(json["1A"].map((x) => The1A.fromJson(x))),
    the3A: List<The3A>.from(json["3A"].map((x) => The3A.fromJson(x))),
    the1Y: List<The1Y>.from(json["1Y"].map((x) => The1Y.fromJson(x))),
    the5Y: List<The5Y>.from(json["5Y"].map((x) => The5Y.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "1G": List<dynamic>.from(the1G.map((x) => x.toJson())),
    "1H": List<dynamic>.from(the1H.map((x) => x.toJson())),
    "1A": List<dynamic>.from(the1A.map((x) => x.toJson())),
    "3A": List<dynamic>.from(the3A.map((x) => x.toJson())),
    "1Y": List<dynamic>.from(the1Y.map((x) => x.toJson())),
    "5Y": List<dynamic>.from(the5Y.map((x) => x.toJson())),
  };
}