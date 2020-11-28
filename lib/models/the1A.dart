class The1A {
  int d;
  double c;

  The1A({this.d, this.c});

  The1A.fromJson(dynamic json) {
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
