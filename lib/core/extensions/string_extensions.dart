import 'package:intl/intl.dart';

extension StringLocalization on String {
  static NumberFormat get portfolioCurrency =>
      NumberFormat.simpleCurrency(name: '', decimalDigits: 2);
}
