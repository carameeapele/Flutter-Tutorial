import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  bool _isPressed = false;
  String _buttonText = '';

  @override
  Widget buid(BuildContext contect) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        leading: const Icon(Icons.face),
        title: const Text('My first flutter app'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              width: 200,
              height: 200,
              color: Colors.green[100],
              child: Center(
                child: Text(
                  'Hello World',
                  style: TextStyle(
                      color: Colors.green[800],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_isPressed) {
                        _buttonText = 'Auch';
                      } else {
                        _buttonText = 'Press me';
                      }
                      _isPressed = !_isPressed;
                    });
                  },
                  child: Text(
                    _buttonText,
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                )),
            Container(
              child: Image.asset('assets/dog.jpg'),
            )
          ],
        ),
      ),
    );
  }
}
