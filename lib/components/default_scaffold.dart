import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DefaultScaffold extends HookWidget {
  const DefaultScaffold(
      {super.key, required this.body, this.appBar, this.drawer});

  final Widget body;

  final Widget? drawer;

  final AppBar? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      // backgroundColor: Colors.transparent,
      body: body,
      appBar: appBar,
      drawer: drawer,
    );
  }
}
