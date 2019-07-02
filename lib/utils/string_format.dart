import 'package:real_estate_circle/utils/number_format.dart';

class StringFormat {
  static maxLength(String s, int l) {
    if (null == s) return '';
    if (s.length <= l) return s;
    return s.substring(0, l) + ' ...';
  }

  static generateLabel(String value, int type) {
    String result = value;
    switch (type) {
      case 0: // currency
        result = NumberFormatter.formatMoneyString(value, 0);
        break;
      case 1: // number
        result = NumberFormatter.formatNumberString(value);
        break;
      case 2: // integer
        result = NumberFormatter.formatIntString(value);
        break;
      default:
    }
    return result;
  }
}
