class The1Y {
  int d;
  double c;

  The1Y({
    this.d,
    this.c,
  });

  The1Y.fromJson(dynamic json) {
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
