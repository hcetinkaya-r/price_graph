import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles{

  static getTitleData() => FlTitlesData(

    show: true,
    bottomTitles: SideTitles(
      showTitles: true,
      reservedSize: 35,
      getTextStyles: (value) => const TextStyle(
        color: Color(0xff68737d),
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      getTitles: (value) {
        switch (value.toInt()) {
          case 1:
            return '1G';
          case 2:
            return '1H';
          case 3:
            return '1A';
          case 4:
              return '3A';
          case 5:
              return '1Y';
          case 6:
              return '5Y';

        }
        return '';
      },
      margin: 8,
    ),
    leftTitles: SideTitles(
      showTitles: true,
      getTextStyles: (value) => const TextStyle(
        color: Color(0xff67727d),
        fontWeight: FontWeight.bold,
        fontSize: 10,
      ),
      getTitles: (value) {
        switch (value.toInt()) {
          case 1:
            return '10k';
          case 3:
            return '30k';
          case 5:
            return '50k';
          case 7:
            return '70k';
          case 9:
            return '90k';
          case 11:
            return '110k';
        }
        return '';
      },
      reservedSize: 25,
      margin: 10,
    ),

  );

}