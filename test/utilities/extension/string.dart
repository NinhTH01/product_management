import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:product_management/utilities/extension/string.dart';

void main() {
  group('StringExtensions', () {
    test('Formats a valid number string to VND', () {
      String input = '1000000';
      String formatted = input.toFormattedVND();
      expect(formatted,
          NumberFormat.currency(locale: 'vi_VN', symbol: '₫').format(1000000));
    });

    test('Formats a valid number string with commas to VND', () {
      String input = '1,000,000';
      String formatted = input.toFormattedVND();
      expect(formatted,
          NumberFormat.currency(locale: 'vi_VN', symbol: '₫').format(1000000));
    });

    test('Returns "0.00" for an empty string', () {
      String input = '';
      String formatted = input.toFormattedVND();
      expect(formatted, '0.00');
    });

    test('Returns "Invalid number" for a non-numeric string', () {
      String input = 'abc';
      String formatted = input.toFormattedVND();
      expect(formatted, 'Invalid number');
    });

    test('Formats a negative number correctly', () {
      String input = '-500000';
      String formatted = input.toFormattedVND();
      expect(formatted,
          NumberFormat.currency(locale: 'vi_VN', symbol: '₫').format(-500000));
    });

    test('Formats a number with leading and trailing spaces', () {
      String input = '  2000  ';
      String formatted = input.toFormattedVND();
      expect(formatted,
          NumberFormat.currency(locale: 'vi_VN', symbol: '₫').format(2000));
    });
  });
}
