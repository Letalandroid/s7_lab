import 'package:flutter/foundation.dart';

class MyModel with ChangeNotifier {
  String _name = '';

  String get name => _name;

  void updateName(String newName) {
    _name = newName;
    notifyListeners(); // Notify listeners about the change
  }
}
