import 'package:finfree_price_graph/models/the1G.dart';
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

  String url = 'https://finfree.app/demo';
  String key = 'R29vZCBMdWNr';

  List data1H;
  List data1A;
  List data3A;
  List data1Y;
  List data5Y;


  double min1H_c;
  double max1H_c;
  double min1A_c;
  double max1A_c;
  double min3A_c;
  double max3A_c;
  double min1Y_c;
  double max1Y_c;
  double min5Y_c;
  double max5Y_c;


  int min1H_d;
  int max1H_d;
  int min1A_d;
  int max1A_d;
  int min3A_d;
  int max3A_d;
  int min1Y_d;
  int max1Y_d;
  int min5Y_d;
  int max5Y_d;

  List<FlSpot> flSpotList;


  The1G the1g;






  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    makeRequest();
  }

  Future<String> makeRequest() async {
    var response = await http.get(Uri.encodeFull(url),
        headers: {HttpHeaders.authorizationHeader: key});

    var extractData = jsonDecode(response.body);

    data1H = extractData["1H"];
    data1A = extractData["1A"];
    data3A = extractData["3A"];
    data1Y = extractData["1Y"];
    data5Y = extractData["5Y"];

    //min-max value for c:


    data1H.sort((a, b) => a['c'].compareTo(b['c']));
    min1H_c = data1H.first['c'];
    max1H_c = data1H.last['c'];

    data1A.sort((a, b) => a['c'].compareTo(b['c']));
    min1A_c = data1A.first['c'];
    max1A_c = data1A.last['c'];

    data3A.sort((a, b) => a['c'].compareTo(b['c']));
    min3A_c = data3A.first['c'];
    max3A_c = data3A.last['c'];

    data1Y.sort((a, b) => a['c'].compareTo(b['c']));
    min1Y_c = data1Y.first['c'];
    max1Y_c = data1Y.last['c'];

    data5Y.sort((a, b) => a['c'].compareTo(b['c']));
    min5Y_c = data5Y.first['c'];
    max5Y_c = data5Y.last['c'];

    //min-max value for d:



    data1H.sort((a, b) => a['d'].compareTo(b['d']));
    min1H_d = data1H.first['d'];
    max1H_d = data1H.last['d'];

    data1A.sort((a, b) => a['d'].compareTo(b['d']));
    min1A_d = data1A.first['d'];
    max1A_d = data1A.last['d'];

    data3A.sort((a, b) => a['d'].compareTo(b['d']));
    min3A_d = data3A.first['d'];
    max3A_d = data3A.last['d'];

    data1Y.sort((a, b) => a['d'].compareTo(b['d']));
    min1Y_d = data1Y.first['d'];
    max1Y_d = data1Y.last['d'];

    data5Y.sort((a, b) => a['d'].compareTo(b['d']));
    min5Y_d = data5Y.first['d'];
    max5Y_d = data5Y.last['d'];

    print("Min 5Y d: ${min5Y_d.toString()}");
    print("Max 5Y d: ${max5Y_d.toString()}");
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
                FlSpot(2.1, 3.1),
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
