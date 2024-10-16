import 'package:intl/intl.dart';

extension StringExtensions on String {
  String toFormattedVND() {
    if (trim().isEmpty) {
      return '0.00';
    }

    try {
      double number = double.parse(replaceAll(',', ''));
      return NumberFormat.currency(
        locale: 'vi_VN',
        symbol: '₫',
      ).format(number);
    } catch (e) {
      return 'Invalid number';
    }
  }
}
