import 'package:flutter/material.dart';

class AlarmNameTextField extends StatefulWidget {
  @override
  _AlarmNameTextFieldState createState() => _AlarmNameTextFieldState();
}

class _AlarmNameTextFieldState extends State<AlarmNameTextField> {
  late TextEditingController _alarmNameController;

  @override
  void initState() {
    super.initState();
    _alarmNameController = TextEditingController();
    _alarmNameController.text = '알람명';
  }

  @override
  void dispose() {
    _alarmNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _alarmNameController,
      decoration: InputDecoration(
        hintText: '알람명을 입력하세요',
      ),
    );
  }
}
