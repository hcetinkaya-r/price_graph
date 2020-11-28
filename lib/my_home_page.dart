import 'dart:io';
import 'package:finfree_price_graph/graph/line_titles.dart';
import 'package:finfree_price_graph/models/price_entry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fl_chart/fl_chart.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PriceEntry priceEntry;

  final List<Color> gradientsColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a)
  ];

  Future<PriceEntry> getEntry() async {
    final response = await http.get('https://finfree.app/demo',
        headers: {HttpHeaders.authorizationHeader: 'R29vZCBMdWNr'});
    if (response.statusCode == 200) {
      final responseJson = jsonDecode(response.body);

      print(response.statusCode);
      print(response.body.length);
      print(
          "DATA : " + PriceEntry.fromJson(responseJson).the1y[0].c.toString());

      return PriceEntry.fromJson(responseJson);
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.green,
        ),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "FinFree",
                style: TextStyle(
                  color: Colors.green.shade900,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("AL-SAT"),


            ],

          ),
          Text("8,02 TL", style: TextStyle(color: Colors.greenAccent),),
          Text("%1.91 Artış", style: TextStyle(color: Colors.greenAccent),),
          Text("%54 Yıllık Değişim", style: TextStyle(color: Colors.greenAccent),),

          Container(
            color: Colors.grey.shade800,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: LineChart(
              LineChartData(
                  minX: 0,
                  maxX: 11,
                  minY: 0,
                  maxY: 6,
                  titlesData: LineTitles.getTitleData(),
                  gridData: FlGridData(
                      show: true,
                      getDrawingHorizontalLine: (value) {
                        return FlLine(color: Color(0xff37434d), strokeWidth: 1);
                      },
                      drawVerticalLine: true,
                      getDrawingVerticalLine: (value) {
                        return FlLine(
                          color: Color(0xff37434d),
                          strokeWidth: 1,
                        );
                      }),
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(color: Color(0xff37434d), width: 1),
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 3),
                        FlSpot(2.6, 2),
                        FlSpot(4.9, 5),
                        FlSpot(6.8, 2.5),
                        FlSpot(8, 4),
                        FlSpot(9.5, 3),
                        FlSpot(11, 4),
                      ],
                      isCurved: true,
                      colors: gradientsColors,
                      barWidth: 5,
                      dotData: FlDotData(show: false),
                      belowBarData: BarAreaData(
                        show: true,
                        colors: gradientsColors
                            .map((color) => color.withOpacity(0.3))
                            .toList(),
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
