class The1A {
  The1A({
    this.d,
    this.c,

  });

  int d;
  double c;


  factory The1A.fromJson(Map<String, dynamic> json) => The1A(
    d: json["d"],
    c: json["c"].toDouble(),

  );

  Map<String, dynamic> toJson() => {
    "d": d,
    "c": c,

  };
}