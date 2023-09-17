import 'package:flutter/material.dart';

extension NewNavigation on BuildContext {
  void goNamed(String name) {
    Navigator.of(this).popAndPushNamed(name);
  }

  void pushNamed(
    String name,
  ) {
    Navigator.of(this).pushNamed(name);
  }

  void pop() {
    Navigator.of(this).pop();
  }
}
