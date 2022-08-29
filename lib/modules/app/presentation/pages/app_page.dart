import 'package:flutter/material.dart';

class AppPae extends StatelessWidget {
  const AppPae({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('app Page Title'),
      ),
      body: const Center(
        child: Text('app Page Body'),
      ),
    );
  }
}
