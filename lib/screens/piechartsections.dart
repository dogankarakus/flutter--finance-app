import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

import 'consts.dart';

List<PieChartSectionData> getSections() => PieData.data
    .asMap()
    .map<int, PieChartSectionData>((index, data) {
      final value = PieChartSectionData(
        color: data.color,
        value: data.percent,
        title: '${data.percent}%',
        titleStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: const Color(0xffffffff),
        ),
      );
      return MapEntry(index, value);
    })
    .values
    .toList();
