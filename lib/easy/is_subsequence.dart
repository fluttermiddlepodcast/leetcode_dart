class Solution {
  bool isSubsequence(String s, String t) {
    var sP = 0;
    var tP = 0;
    while (sP != s.length && tP != t.length) {
      if (s[sP] == t[tP]) {
        sP++;
      }
      tP++;
    }
    return sP == s.length;
  }
}
