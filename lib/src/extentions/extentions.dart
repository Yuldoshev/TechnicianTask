import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension ExtentionForSum on double {
  String showSumma(BuildContext context) {
    final currencyFormatter = NumberFormat('#,###');

    return currencyFormatter.format(this).replaceAll(',', ' ');
  }

  String showSummaOnlyFormat() {
    final currencyFormatter = NumberFormat('#,###');

    return currencyFormatter.format(this).replaceAll(',', ' ');
  }
}
