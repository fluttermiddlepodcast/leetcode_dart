class FrontMiddleBackQueue {
  final _list = [];

  void pushFront(int val) {
    _list.insert(0, val);
  }

  void pushMiddle(int val) {
    _list.insert(_list.length ~/ 2, val);
  }

  void pushBack(int val) {
    _list.add(val);
  }

  int popFront() {
    if (_list.isEmpty) {
      return -1;
    }

    return _list.removeAt(0);
  }

  int popMiddle() {
    if (_list.isEmpty) {
      return -1;
    }

    var size = _list.length;
    var index = size % 2 == 0 ? size ~/ 2 - 1 : size ~/ 2;

    return _list.removeAt(index);
  }

  int popBack() {
    if (_list.isEmpty) {
      return -1;
    }

    return _list.removeLast();
  }
}
