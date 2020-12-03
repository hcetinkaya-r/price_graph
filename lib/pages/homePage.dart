import 'package:finfree_price_graph/models/apiService.dart';
import 'package:finfree_price_graph/models/priceEntry.dart';
import 'package:finfree_price_graph/widgets/line_titles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  Future<PriceEntry> _priceEntry;

  @override
  void initState() {
    super.initState();
    _priceEntry = ApiService().getEntries();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            MyApp.title,
            style: TextStyle(color: Colors.orange),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        body: Scaffold(
          body: Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(15),
            color: Colors.black87,
            child: FutureBuilder<PriceEntry>(
              future: _priceEntry,
              builder: (context, snapshot) {
                if (snapshot.hasData) {

                  for(var i in snapshot.data.the1G){
                    print("C: ${i.c} -- D: ${i.d}");

                  }
                  /*itemCount: snapshot.data.the1G.length,
                itemBuilder: (context, index) {
                  var the1G = snapshot.data.the1G[index];
                  print(the1G.runtimeType);*/

                  return LineChart(
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
                        border: Border.all(
                            color: Colors.greenAccent.shade100, width: 0.2),
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
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ),
      );
}
