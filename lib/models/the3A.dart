class The3A {
  int d;
  double c;
  int v;
  double h;
  double l;
  dynamic o;

  The3A({this.d, this.c, this.v, this.h, this.l, this.o});

  The3A.fromJson(dynamic json) {
    d = json["d"];
    c = json["c"].toDouble();
    v = json["v"];
    h = json["h"].toDouble();
    l = json["l"].toDouble();
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
