class The1G {
  int d;
  double c;
  int v;
  double h;
  double l;
  dynamic o;

  The1G({this.d, this.c, this.v, this.h, this.l, this.o});

  The1G.fromJson(dynamic json) {
    d = json["d"];
    c = json["c"].toDouble();
    v = json["v"];
    h = json["h"];
    l = json["l"];
    o = json["o"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["d"] = d;
    map["c"] = c;
    map["v"] = v;
    map["h"] = h;
    map["l"] = l;
    map["o"] = o;
    return map;
  }
}
