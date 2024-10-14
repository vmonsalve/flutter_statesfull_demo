import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //Variables
  int _counter = 0;
  //Metodos

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decreaseCounter() {
    setState(() {
      _counter--;
    });
  }
  //Interfaz de usuario

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Icon(Icons.keyboard_arrow_up),
            ),
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 48),
            ),
            ElevatedButton(
                onPressed: _decreaseCounter,
                child: Icon(Icons.keyboard_arrow_down))
          ],
        ),
      ),
    );
  }
}
