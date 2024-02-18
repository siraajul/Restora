import 'dart:async';

import 'package:flutter/material.dart';

class OTPTimer extends StatefulWidget {
  final int duration;

  const OTPTimer({
    super.key,
    required this.duration,
  });

  @override
  _OTPTimerState createState() => _OTPTimerState();
}

class _OTPTimerState extends State<OTPTimer> {
  late int _start;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _start = widget.duration;
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  String get timerDisplay {
    int minutes = _start ~/ 60;
    int seconds = _start % 60;

    String minutesStr = (minutes % 60).toString().padLeft(2, '0');
    String secondsStr = (seconds % 60).toString().padLeft(2, '0');

    return '$minutesStr:$secondsStr';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        if (_start > 0)
          Text(
            timerDisplay,
            style: TextStyle(fontSize: 10),
          )
        else
          Container(), // Hide the timer when it reaches '00:00'
      ],
    );
  }
}
