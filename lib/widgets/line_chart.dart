import 'package:finfree_price_graph/models/price_entry.dart';
import 'package:finfree_price_graph/widgets/line_titles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';

class LineChartWidget extends StatefulWidget {
  @override
  _LineChartWidgetState createState() => _LineChartWidgetState();
}

class _LineChartWidgetState extends State<LineChartWidget> {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  PriceEntry priceEntry;
  List<PriceEntry> data;

  // ignore: missing_return
  Future<List<PriceEntry>> getEntry() async {
    final response = await http.get('https://finfree.app/demo',
        headers: {HttpHeaders.authorizationHeader: 'R29vZCBMdWNr'});
    if (response.statusCode == 200) {
      Map<String, dynamic> responseJson = jsonDecode(response.body);
      var data = PriceEntry.fromJson(responseJson);

      Map<String, dynamic> priceData = jsonDecode(response.body);
      var newData = priceData["1G"][5];
      print("New data: " + newData.toString());

      print("Yeni data: ${data.the1y.map((e) => e.d)}");

      print(response.statusCode);
      print(response.body.length);
      print(responseJson);
      print(
          "DATA : " + PriceEntry.fromJson(responseJson).the1y[0].c.toString());

      //return PriceEntry.fromJson(responseJson);

      //return data.map((json) => PriceEntry.fromJson(json)).toList();
    } else {
      print("ERROR: ${response.statusCode}");
      throw Exception("ERROR: ${response.statusCode}");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getEntry();
    //data=List();
  }

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
          minX: 0,
          maxX: 6,
          minY: 0,
          maxY: 6,
          titlesData: LineTitles.getTitleData(),
          gridData: FlGridData(
            show: false,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1,
              );
            },
            drawVerticalLine: true,
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1,
              );
            },
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: Colors.greenAccent.shade100, width: 0.2),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 0),
                FlSpot(2.6, 2),
                FlSpot(4.9, 5),
                FlSpot(6.8, 2.5),
                FlSpot(8, 4),
                FlSpot(9.5, 3),
                FlSpot(11, 4),
              ],
              //isCurved: true,
              colors: gradientColors,
              barWidth: 1,

              //isStepLineChart: true,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                //show: true,

                colors: gradientColors
                    .map((color) => color.withOpacity(0.3))
                    .toList(),
              ),
            ),
          ],
        ),
      );
}
