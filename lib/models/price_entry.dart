import 'dart:convert';
import 'package:finfree_price_graph/models/the1A.dart';
import 'package:finfree_price_graph/models/the1G.dart';
import 'package:finfree_price_graph/models/the1H.dart';
import 'package:finfree_price_graph/models/the1Y.dart';
import 'package:finfree_price_graph/models/the3A.dart';
import 'package:finfree_price_graph/models/the5Y.dart';


//PriceEntry priceEntryFromJson(String str) => PriceEntry.fromJson(json.decode(str));



class PriceEntry {
  List<The1G> the1g;
  List<The1H> the1h;
  List<The1A> the1a;
  List<The3A> the3a;
  List<The1Y> the1y;
  List<The5Y> the5y;

  PriceEntry(
      {this.the1g, this.the1h, this.the1a, this.the3a, this.the1y, this.the5y});

  /*factory PriceEntry.fromJson(Map<String, dynamic> json) {
    var list1g = json['the1g'] as List;
    var list1h = json['the1h'] as List;
    var list1a = json['the1a'] as List;
    var list3a = json['the3a'] as List;
    var list1y = json['the1y'] as List;
    var list5y = json['the5y'] as List;

    List<The1G> the1GList = list1g.map((e) => The1G.fromJson(e)).toList();
    List<The1H> the1HList = list1h.map((e) => The1H.fromJson(e)).toList();
    List<The1A> the1AList = list1a.map((e) => The1A.fromJson(e)).toList();
    List<The3A> the3AList = list3a.map((e) => The3A.fromJson(e)).toList();
    List<The1Y> the1YList = list1y.map((e) => The1Y.fromJson(e)).toList();
    List<The5Y> the5YList = list5y.map((e) => The5Y.fromJson(e)).toList();

    return PriceEntry(
      the1g: the1GList,
      the1h: the1HList,
      the1a: the1AList,
      the3a: the3AList,
      the1y: the1YList,
      the5y: the5YList,


    the1g: List<The1G>.from(json["1G"].map((x) => The1G.fromJson(x)).toList()),
    the1h: List<The1H>.from(json["1H"].map((x) => The1H.fromJson(x)).toList()),
    the1a: List<The1A>.from(json["1A"].map((x) => The1A.fromJson(x)).toList()),
    the3a: List<The3A>.from(json["3A"].map((x) => The3A.fromJson(x)).toList()),
    the1y: List<The1Y>.from(json["1Y"].map((x) => The1Y.fromJson(x)).toList()),
    the5y: List<The5Y>.from(json["5Y"].map((x) => The5Y.fromJson(x)).toList()),
    );
  }*/

  PriceEntry.fromJson(dynamic json) {
    if (json["1G"] != null) {
      the1g = [];
      json["1G"].forEach((v) {
        the1g.add(The1G.fromJson(v));
      });
    }
    if (json["1H"] != null) {
      the1h = [];
      json["1H"].forEach((v) {
        the1h.add(The1H.fromJson(v));
      });
    }
    if (json["1A"] != null) {
      the1a = [];
      json["1A"].forEach((v) {
        the1a.add(The1A.fromJson(v));
      });
    }
    if (json["3A"] != null) {
      the3a = [];
      json["3A"].forEach((v) {
        the3a.add(The3A.fromJson(v));
      });
    }
    if (json["1Y"] != null) {
      the1y = [];
      json["1Y"].forEach((v) {
        the1y.add(The1Y.fromJson(v));
      });
    }
    if (json["5Y"] != null) {
      the5y = [];
      json["5Y"].forEach((v) {
        the5y.add(The5Y.fromJson(v));
      });
    }
  }

}
