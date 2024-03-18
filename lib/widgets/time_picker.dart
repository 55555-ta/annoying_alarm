import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

class HourMinute12HCustomStyle extends StatefulWidget {
  @override
  _HourMinute12HCustomStyleState createState() =>
      _HourMinute12HCustomStyleState();
}

class _HourMinute12HCustomStyleState extends State<HourMinute12HCustomStyle> {
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return TimePickerSpinner(
      is24HourMode: false,
      normalTextStyle:
          const TextStyle(fontSize: 18, color: Color.fromARGB(33, 0, 0, 0)),
      highlightedTextStyle: const TextStyle(
          fontSize: 30,
          color: Color.fromARGB(255, 0, 0, 0),
          fontWeight: FontWeight.w700),
      spacing: 40,
      itemHeight: 60,
      isForce2Digits: true,
      minutesInterval: 1,
      onTimeChange: (time) {
        setState(() {
          _dateTime = time;
          // print(_dateTime);
        });
      },
    );
  }
}
