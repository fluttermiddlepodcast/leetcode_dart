class Solution {
  var _result = '';

  String intToRoman(int num) {
    num = _append(num, "M", 1000);
    num = _append(num, "CM", 900);
    num = _append(num, "D", 500);
    num = _append(num, "CD", 400);
    num = _append(num, "C", 100);
    num = _append(num, "XC", 90);
    num = _append(num, "L", 50);
    num = _append(num, "XL", 40);
    num = _append(num, "X", 10);
    num = _append(num, "IX", 9);
    num = _append(num, "V", 5);
    num = _append(num, "IV", 4);
    num = _append(num, "I", 1);
    return _result;
  }

  int _append(int num, String letter, int letterValue) {
    while (num >= letterValue) {
      _result += letter;
      num -= letterValue;
    }
    return num;
  }
}
