import 'package:flutter/foundation.dart';

class SelectionNotifier extends ChangeNotifier {
  int lastIndex;
  int currentIndex;
  final ValueChanged<int> onTap;

  SelectionNotifier(this.currentIndex, this.onTap);

  void selectIndex(int index) {
    print("new snake $index");

    if (index != 3) {
      lastIndex = currentIndex;
      currentIndex = index;
      onTap?.call(index);
      notifyListeners();
    }

    if (index == 3) {
      lastIndex = currentIndex;
      currentIndex = lastIndex;
      onTap?.call(index);
      notifyListeners();
    }
  }
}
