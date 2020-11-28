import 'package:finfree_price_graph/widgets/line_chart.dart';
import 'package:flutter/material.dart';


class LineChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Container(
            color: Colors.black87,
            margin: EdgeInsets.only(bottom: 20),
            child: LineChartWidget()),
      );
}
