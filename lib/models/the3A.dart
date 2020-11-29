class The3A {
  int d;
  double c;

  The3A({
    this.d,
    this.c,
  });

  factory The3A.fromJson(Map<String, dynamic> json) => The3A(
      d: json["d"],
      c: json["c"].toDouble()
  );

  /*The3A.fromJson(dynamic json) {
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
