import 'dart:math';
import 'package:finfree_price_graph/models/apiService.dart';
import 'package:finfree_price_graph/models/priceEntry.dart';
import 'package:finfree_price_graph/models/the1G.dart';
import 'package:finfree_price_graph/widgets/line_titles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class The1GChart extends StatefulWidget {
  @override
  _The1GChartState createState() => _The1GChartState();
}

class _The1GChartState extends State<The1GChart> {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  List<double> cList;
  List<double> dList;

  Future<PriceEntry> _priceEntry;



  @override
  void initState() {
    super.initState();
    _priceEntry = ApiService().getEntries();
    cList = List();
    dList = List();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      child: FutureBuilder<PriceEntry>(
        future: _priceEntry,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<The1G> data1g = snapshot.data.the1G;

            for (int i = 0; i < data1g.length; i++) {
              cList.add(data1g[i].c);
            }
            for (int i = 0; i < data1g.length; i++) {
              dList.add(data1g[i].d);
            }
            print("C list: ${cList}");
            print("D list: ${dList}");

            double maxY = cList.reduce(max);
            double maxX = dList.reduce(max);
            double minY = cList.reduce(min);
            double minX = dList.reduce(min);

            List<FlSpot> flSpotListC = data1g
                .asMap()
                .entries
                .map((e) => FlSpot(
                      e.key.toDouble(),
                      e.value.c,
                    ))
                .toList();
            List<FlSpot> flSpotListD = data1g
                .asMap()
                .entries
                .map((e) => FlSpot(
                      e.key.toDouble(),
                      e.value.d,
                    ))
                .toList();

            print(flSpotListC.map((e) => e.x).toString());
            print(flSpotListC.map((e) => e.y).toString());

            return LineChart(
              LineChartData(
                minX: 0,
                maxX: 10,
                minY: 0,
                maxY: 10,
                titlesData: LineTitles.getTitleData(),
                gridData: FlGridData(
                  show: true,
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
                  border: Border.all(
                      color: Colors.greenAccent.shade100, width: 0.2),
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: flSpotListC,
                    isCurved: true,
                    colors: gradientColors,
                    barWidth: 1,
                    isStepLineChart: true,
                    dotData: FlDotData(show: false),
                    belowBarData: BarAreaData(
                      show: true,
                      colors: gradientColors
                          .map((color) => color.withOpacity(0.3))
                          .toList(),
                    ),
                  ),
                  LineChartBarData(
                    spots: flSpotListD,
                    isCurved: true,
                    colors: gradientColors,
                    barWidth: 1,
                    isStepLineChart: true,
                    dotData: FlDotData(show: false),
                    belowBarData: BarAreaData(
                      show: true,
                      colors: gradientColors
                          .map((color) => color.withOpacity(0.3))
                          .toList(),
                    ),
                  ),

                ],
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
