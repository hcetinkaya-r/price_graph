class The1H {
  int d;
  double c;

  The1H({
    this.d,
    this.c,
  });

  The1H.fromJson(dynamic json) {
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
