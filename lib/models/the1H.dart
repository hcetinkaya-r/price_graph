class The1H {
  The1H({
    this.d,
    this.c,

  });

  int d;
  double c;


  factory The1H.fromJson(Map<String, dynamic> json) => The1H(
    d: json["d"],
    c: json["c"].toDouble(),

  );

  Map<String, dynamic> toJson() => {
    "d": d,
    "c": c,

  };
}