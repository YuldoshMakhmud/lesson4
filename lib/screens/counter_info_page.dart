import 'package:flutter/material.dart';

class CounterInfoPage extends StatelessWidget {
  const CounterInfoPage({super.key, required this.counter});
  final int counter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Info Page"),
      ),
      body:  Center(
        child: Text(counter.toString(),style: const TextStyle(fontSize: 50),),
      ),
    );
  }
}
