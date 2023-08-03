import 'package:flutter/material.dart';

class NoIntenetScreen extends StatelessWidget {
  const NoIntenetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Your do not have internet'),
      ),
    );
  }
}
