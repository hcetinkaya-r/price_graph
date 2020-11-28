

import 'package:finfree_price_graph/models/the1A.dart';
import 'package:finfree_price_graph/models/the1G.dart';
import 'package:finfree_price_graph/models/the1H.dart';
import 'package:finfree_price_graph/models/the1Y.dart';
import 'package:finfree_price_graph/models/the3A.dart';
import 'package:finfree_price_graph/models/the5Y.dart';

class PriceEntry {
  List<The1G> the1g;
  List<The1H> the1h;
  List<The1A> the1a;
  List<The3A> the3a;
  List<The1Y> the1y;
  List<The5Y> the5y;

  PriceEntry({
      this.the1g,
      this.the1h,
      this.the1a,
      this.the3a,
      this.the1y,
      this.the5y});






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