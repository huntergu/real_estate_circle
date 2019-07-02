import 'package:intl/intl.dart';

class NumberFormatter {
  static formatMoneyString(String money, int fd) {
    try {
      return formatMoney(double.parse(money), fd);
    } catch (e) {
      return '\$ 0';
    }
  }

  static formatMoney(double money, int fd) {
    return '\$ ' + NumberFormat.currency(
        symbol: '', decimalDigits: fd)
        .format(money);
  }

  static formatIntString(String num) {
    try {
      int i = int.parse(num);
      return formatInt(i);
    } catch (e) {
      return '0';
    }
  }

  static formatInt(int num) {
    final formatter = new NumberFormat('#,###');
    return formatter.format(num);
  }

static formatNumberString(String num) {
  try {
    double d = double.parse(num);
    return formatNumber(d);
  } catch (e) {
    return '0.00';
  }
}
  static formatNumber(double num) {
    final formatter = new NumberFormat('#,###.##');
    return formatter.format(num);
  }
}
