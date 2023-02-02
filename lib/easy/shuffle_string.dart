class Solution {
  String restoreString(String s, List<int> indices) {
    var result = List.filled(indices.length, ' ');
    for (int i = 0; i < indices.length; i++) {
      result[indices[i]] = s[i];
    }
    return result.join();
  }
}
