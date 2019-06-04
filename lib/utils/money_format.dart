import 'package:intl/intl.dart';

class MoneyFormat {
  static formatMoney(double money, int fd) {
    return '\$ ' + NumberFormat.currency(
        symbol: '', decimalDigits: fd)
        .format(money);
  }
}
