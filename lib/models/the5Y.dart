class The5Y {
  The5Y({
    this.d,
    this.c,

  });

  int d;
  double c;


  factory The5Y.fromJson(Map<String, dynamic> json) => The5Y(
    d: json["d"],
    c: json["c"].toDouble(),

  );

  Map<String, dynamic> toJson() => {
    "d": d,
    "c": c,

  };
}