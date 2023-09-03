import 'package:flutter/material.dart';

class DefaultScaffold extends StatelessWidget {
  const DefaultScaffold(
      {super.key, required this.body, this.appBar, this.drawer});

  final Widget body;

  final Widget? drawer;

  final AppBar? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: body,
      appBar: appBar,
      drawer: drawer,
    );
  }
}
