
class StringFormat {
  static maxLength(String s, int l) {
    if (null == s) return '';
    if (s.length <= l) return s;
    return s.substring(0, l) + ' ...';
  }
}
