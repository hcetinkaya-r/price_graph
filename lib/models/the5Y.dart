class The5Y {
  int d;
  double c;

  The5Y({
    this.d,
    this.c,
  });

  factory The5Y.fromJson(Map<String, dynamic> json) => The5Y(
      d: json["d"],
      c: json["c"].toDouble()
  );

  /*The5Y.fromJson(dynamic json) {
    d = json["d"];
    c = json["c"].toDouble();
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["d"] = d;
    map["c"] = c;

    return map;
  }*/
}
