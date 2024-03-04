import 'package:flutter/material.dart';

class AlarmButton extends StatefulWidget {
  const AlarmButton({Key? key}) : super(key: key);

  @override
  State<AlarmButton> createState() => _AlarmButtonState();
}

class _AlarmButtonState extends State<AlarmButton> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
              trackOutlineColor: MaterialStateProperty.all(Colors.transparent),
              activeColor: const Color(0xffC8E3F7),
              activeTrackColor: Colors.white,
              inactiveTrackColor: Colors.white,
              inactiveThumbColor: const Color(0xffBABABA),
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value;
                });
              },
            );
  }
}
