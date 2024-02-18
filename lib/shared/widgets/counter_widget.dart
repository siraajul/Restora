import 'package:flutter/material.dart';

class CustomCounterWidget extends StatefulWidget {
  final String title;
  final String subtitle;
  final int maxCounter;

  const CustomCounterWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.maxCounter,
  });

  @override
  _CustomCounterWidgetState createState() => _CustomCounterWidgetState();
}

class _CustomCounterWidgetState extends State<CustomCounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if (_counter < widget.maxCounter) {
        _counter++;
      } else {
        _showMaxCounterDialog();
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  void _showMaxCounterDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Maximum Limit Reached'),
          content: Text(
              'You have reached the maximum limit of ${widget.maxCounter}.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(screenWidth > 600 ? 20 : 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: screenWidth > 600 ? 18 : 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.subtitle,
                  style: TextStyle(
                    fontSize: screenWidth > 600 ? 16 : 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: screenWidth > 600 ? 20 : 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: _decrementCounter,
                icon: Icon(
                  Icons.remove_circle_outline,
                  color: Colors.orange,
                ),
              ),
              SizedBox(width: screenWidth > 600 ? 10 : 5),
              Text(
                '$_counter',
                style: TextStyle(fontSize: screenWidth > 600 ? 18 : 14),
              ),
              SizedBox(width: screenWidth > 600 ? 10 : 5),
              IconButton(
                onPressed: _incrementCounter,
                icon: Icon(
                  Icons.add_circle_outline,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
