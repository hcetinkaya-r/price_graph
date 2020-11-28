class The1G {
  int d;
  double c;

  The1G({this.d, this.c});

  The1G.fromJson(dynamic json) {
    d = json["d"];
    c = json["c"].toDouble();
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["d"] = d;
    map["c"] = c;

    return map;
  }
}
