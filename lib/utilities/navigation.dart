import 'package:flutter/material.dart';

extension NewNavigation on BuildContext {
  void goNamed(String name ,{Object? argument}) {
    Navigator.of(this).popAndPushNamed(name,arguments: argument);
  }

  void pushNamed(String name, {Object? argument}) {
    Navigator.of(this).pushNamed(name, arguments: argument);
  }

  void pop() {
    Navigator.of(this).pop();
  }
}
