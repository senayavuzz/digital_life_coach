import 'dart:async';
import 'package:wakelock/wakelock.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Counter extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Counter> {
  int _total = 0;
  int _pausedAt = 0;
  bool _paused = false;

  void _setTime() {
    setState(() {
      _total = 1500;
    });
    Timer.periodic(
        Duration(seconds: 1),
            (Timer timer) => setState(() {
          if (!_paused) {
            if (_total == 0) {
              timer.cancel();
            } else {
              _total = _total - 1;
            }
          } else {
            if (_pausedAt > 0) {
              _total = _pausedAt;
            }
          }
        }));
  }

  void _pause() {
    setState(() {
      _paused = !_paused;
      _pausedAt = _total;
    });
  }

  void _reset() {
    setState(() {
      _total = 0;
      _pausedAt = 0;
      _paused = false;
    });
  }

  Color _getColor() {
    if (_total == 0) {
      return Colors.blue[700];
    }
    else if (_total % 2 == 0) {
      return Colors.blue[200];
    }
    else {
      return Colors.blue[400];
    }
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      Wakelock.enable();
    });
    return Scaffold(
      body: GestureDetector(
        child: Container(
          color: _getColor(),
          width: double.infinity,
          height: double.infinity,

          child: Center(
            child: _total == 0
                ? ElevatedButton(
              onPressed: _setTime,
              child: Text(
                'TIMER',
                style: TextStyle(
                  fontSize: 90,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
                : Text(
                DateFormat.ms().format(
                    DateTime.fromMillisecondsSinceEpoch(_total * 1000)),
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ),
        ),
        onTap: _pause,
        onLongPress: _reset,
      ),
    );
  }
}