import 'package:flutter/material.dart';

class AppStateController extends ChangeNotifier {
  AppStateController({int initialGridColumnCount = 4})
      : _gridColumnCount = initialGridColumnCount.clamp(_minGridColumns, _maxGridColumns);

  static const int _minGridColumns = 1;
  static const int _maxGridColumns = 10;

  int _gridColumnCount;

  int get gridColumnCount => _gridColumnCount;

  void setGridColumnCount(int value) {
    final clampedValue = value.clamp(_minGridColumns, _maxGridColumns);
    if (clampedValue == _gridColumnCount) {
      return;
    }
    _gridColumnCount = clampedValue;
    notifyListeners();
  }

  void incrementGridColumnCount() {
    setGridColumnCount(_gridColumnCount + 1);
  }

  void decrementGridColumnCount() {
    setGridColumnCount(_gridColumnCount - 1);
  }
}

class AppState extends InheritedNotifier<AppStateController> {
  const AppState({
    super.key,
    required AppStateController controller,
    required Widget child,
  }) : super(notifier: controller, child: child);

  static AppStateController of(BuildContext context) {
    final appState = context.dependOnInheritedWidgetOfExactType<AppState>();
    assert(appState != null, 'No AppState found in context');
    return appState!.notifier!;
  }
}