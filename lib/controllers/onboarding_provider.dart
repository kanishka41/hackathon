import 'package:flutter/foundation.dart';

class OnBoardNotifier extends ChangeNotifier {
  bool _isLastPage = false;
  bool get isLastPage => _isLastPage;
set isLastPage(bool value) {
    _isLastPage = value;
    notifyListeners(); // Notify listeners when the value changes
  }
}
