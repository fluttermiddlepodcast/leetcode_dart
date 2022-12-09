class Solution {
  bool isCircularSentence(String sentence) {
    final words = sentence.split(' ');
    final first = words.first;
    var curr = first[first.length - 1];
    for (var i = 1; i < words.length; i++) {
      final word = words[i];
      final f = word[0];
      if (f != curr) {
        return false;
      }
      curr = word[word.length - 1];
    }
    return curr == first[0];
  }
}
