import 'package:flutter/material.dart';
import 'package:annoying_alarm/widgets/time_picker.dart';
import 'package:annoying_alarm/widgets/weekday_selector.dart';
import 'package:annoying_alarm/widgets/weekday_manager.dart';
import 'package:annoying_alarm/widgets/alarm_name_text_field.dart';
import 'package:annoying_alarm/widgets/alarmsound_button.dart';

List<String> week = ["일", "월", "화", "수", "목", "금", "토"];
DateTime _dateTime = DateTime.now();
List<bool> isSelected = List.generate(7, (index) => false);

class EditAlarmScreen extends StatefulWidget {
  EditAlarmScreen({Key? key}) : super(key: key);

  @override
  EditAlarmScreenState createState() => EditAlarmScreenState();
}

class EditAlarmScreenState extends State<EditAlarmScreen> {
  final List<String> week = ["일", "월", "화", "수", "목", "금", "토"];
  late final WeekdayManager weekdayManager;

  @override
  void initState() {
    super.initState();
    weekdayManager = WeekdayManager();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          HourMinute12HCustomStyle(),
          const SizedBox(height: 20),
          Expanded(
            child: Column(
              children: [
                Container(
                  color: Colors.grey.withOpacity(0.5),
                  padding: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: Column(
                    children: [
                      WeekdaySelector(
                        week: week,
                        isSelected: weekdayManager.isSelected,
                        onToggle: (index) {
                          setState(
                            () {
                              weekdayManager.toggleDay(index);
                            },
                          );
                        },
                      ),
                      Container(
                        padding: EdgeInsets.all(30), // 여기에 패딩 추가
                        child: AlarmNameTextField(),
                      ),
                      AlarmsoundButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
