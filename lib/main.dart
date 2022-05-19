import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

int numberOfPresses = 0;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RandomApp',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Random App')),
        ),
        body: const PressCount(),
      ),
    );
  }
}

class PressCount extends StatefulWidget {
  const PressCount({Key? key}) : super(key: key);

  @override
  State<PressCount> createState() => _PressCountState();
}

class _PressCountState extends State<PressCount> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        setState(() {
          numberOfPresses++;
        });
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pressed the screen',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              '$numberOfPresses',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 8),
            const Text(
              'many times',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}


