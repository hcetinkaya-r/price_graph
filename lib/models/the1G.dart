import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';

class The1G {
  int d;
  double c;

  The1G({this.d, this.c});

  String url = 'https://finfree.app/demo';
  String key = 'R29vZCBMdWNr';
  List data1G;

  double min1G_c;
  double max1G_c;

  int min1G_d;
  int max1G_d;

  factory The1G.fromJson(Map<String, dynamic> json) =>
      The1G(d: json["d"], c: json["c"].toDouble());

  Future<List<String>> makeRequestFor1G() async {
    var response = await http.get(Uri.encodeFull(url),
        headers: {HttpHeaders.authorizationHeader: key});

    var extractData = jsonDecode(response.body);
    data1G = extractData["1G"];

    return data1G;
  }

  minMaxValueFor1G() async {
    data1G.sort((a, b) => a['c'].compareTo(b['c']));
    min1G_c = data1G.first['c'];
    max1G_c = data1G.last['c'];
    print("min 1g value: ${min1G_c.toString()}");
  }

/*The1G.fromJson(dynamic json) {
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
