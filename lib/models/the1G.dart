class The1G {
  The1G({
    this.d,
    this.c,

  });

  double d;
  double c;


  factory The1G.fromJson(Map<String, dynamic> json) => The1G(
    d: json["d"].toDouble(),
    c: json["c"].toDouble(),

  );

  Map<String, dynamic> toJson() => {
    "d": d,
    "c": c,

  };
}