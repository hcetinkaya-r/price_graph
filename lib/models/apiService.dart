import 'dart:convert';
import 'dart:io';
import 'package:finfree_price_graph/models/priceEntry.dart';
import 'package:finfree_price_graph/models/strings.dart';
import 'package:http/http.dart' as http;

class ApiService {
  String error = "ERROR: data can't get";

  Future<PriceEntry>getEntries() async {
    var client = http.Client();
    var priceEntry = null;

    try {
      var response = await client.get(Uri.encodeFull(Strings().url),
          headers: {HttpHeaders.authorizationHeader: Strings().apiKey});

      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = jsonDecode(jsonString);
        priceEntry = PriceEntry.fromJson(jsonMap);
      }
    } catch (Exception) {
      return null;
    }
    return priceEntry;
  }
}
