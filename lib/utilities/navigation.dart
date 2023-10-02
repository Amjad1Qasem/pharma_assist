import 'package:flutter/material.dart';

extension NewNavigation on BuildContext {
  void goNamed(String name ) {
    Navigator.of(this).popAndPushNamed(name);
  }

  void pushNamed(String name, {Object? argument}) {
    Navigator.of(this).pushNamed(name, arguments: argument);
  }

  void pop() {
    Navigator.of(this).pop();
  }
}
