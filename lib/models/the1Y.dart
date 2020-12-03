class The1Y {
  The1Y({
    this.d,
    this.c,

  });

  int d;
  double c;


  factory The1Y.fromJson(Map<String, dynamic> json) => The1Y(
    d: json["d"],
    c: json["c"].toDouble(),

  );

  Map<String, dynamic> toJson() => {
    "d": d,
    "c": c,

  };
}