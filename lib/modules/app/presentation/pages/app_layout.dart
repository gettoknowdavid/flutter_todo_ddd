import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Teek Layout')),
      body: const Center(child: Text('App Layout')),
    );
  }
}
