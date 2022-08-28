
import 'package:flutter/material.dart';

class AppPage extends StatefulWidget {
  const AppPage({
    Key? key
  }) : super(key: key);
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
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
      