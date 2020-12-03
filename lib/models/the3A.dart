class The3A {
  The3A({
    this.d,
    this.c,

  });

  int d;
  double c;


  factory The3A.fromJson(Map<String, dynamic> json) => The3A(
    d: json["d"],
    c: json["c"].toDouble(),

  );

  Map<String, dynamic> toJson() => {
    "d": d,
    "c": c,

  };
}