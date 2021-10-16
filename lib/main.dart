import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Title Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: LightsTest(),
    );
  }
}

class LightsTest extends StatefulWidget {
  const LightsTest({Key? key}) : super(key: key);

  @override
  _LightsTestState createState() => _LightsTestState();
}

class _LightsTestState extends State<LightsTest> {
  bool _lightsOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: FractionalOffset.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.lightbulb_outline,
                color: _lightsOn ? Colors.yellow : Colors.grey,
                size: 100,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _lightsOn = !_lightsOn;
                });
              },
              child: Container(
                color: _lightsOn ? Colors.yellow : Colors.grey,
                padding: const EdgeInsets.all(8),
                // Change button text when light changes state
                child: Text(_lightsOn ? 'TURN LIGHT OFF' : 'TURN LIGHT ON'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
