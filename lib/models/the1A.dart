class The1A {
  int d;
  double c;

  The1A({this.d, this.c});


  factory The1A.fromJson(Map<String, dynamic> json) => The1A(
  d: json["d"],
  c: json["c"].toDouble()
  );




  /*The1A.fromJson(dynamic json) {
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
