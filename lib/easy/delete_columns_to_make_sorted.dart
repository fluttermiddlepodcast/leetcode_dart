class Solution {
  int minDeletionSize(List<String> strs) {
    var result = 0;
    for (var i = 0; i < strs[0].length; i++) {
      for (var j = 1; j < strs.length; j++) {
        if (strs[j][i].compareTo(strs[j - 1][i]) < 0) {
          result++;
          break;
        }
      }
    }
    return result;
  }
}
