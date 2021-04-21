import 'package:flutter/material.dart';
import 'package:fast_marquee/fast_marquee.dart';

Widget animateText(String message, bool scrolltype) {
  bool _scrollType = scrolltype; // true for Pendulum and false for Circle
  double _velocity = 100;
  int _delayBeforeRound = 1;
  int _pauseBetweenRound = 1;
  int _numberOfRounds = 5;
  double _blankSpace = 10;
  bool _direction = false; // true for left to right -- false for right to left

  if (!_scrollType) {
    _blankSpace = 0;
  }

  return Container(
      child: Marquee(
    text: message,
    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
    velocity: _velocity,
    startPadding: 0,
    blankSpace: _blankSpace,
    reverse: _direction,
    bounce: _scrollType,
    startAfter: Duration(seconds: _delayBeforeRound),
    pauseAfterRound: Duration(seconds: _pauseBetweenRound),
    numberOfRounds: _numberOfRounds,
    showFadingOnlyWhenScrolling: false,
    fadingEdgeStartFraction: 0.05,
    fadingEdgeEndFraction: 0.05,
  ));
}
