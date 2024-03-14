import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

List<String> week = ["일", "월", "화", "수", "목", "금", "토"];
DateTime _dateTime = DateTime.now();
List<bool> isSelected = List.generate(7, (index) => false);

class EditAlarmScreen extends StatefulWidget {
  EditAlarmScreen({Key? key}) : super(key: key);

  @override
  EditAlarmScreenState createState() => EditAlarmScreenState();
}

class EditAlarmScreenState extends State<EditAlarmScreen> {
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          hourMinute12HCustomStyle(),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              color: Colors.grey.withOpacity(0.5),
              padding: EdgeInsets.all(20.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '요일 선택',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Center(
                    child: Wrap(
                      spacing: 10,
                      children: List.generate(
                        week.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              isSelected[index] = !isSelected[index];
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: isSelected[index]
                                  ? Color(0xFFC8E3F7)
                                  : Colors.grey.withOpacity(0.5),

                              borderRadius: BorderRadius.circular(
                                  1000), // 상자를 둥글게 하기 위해 BorderRadius 설정
                            ),
                            child: Text(
                              week[index],
                              style: TextStyle(
                                color: isSelected[index]
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      List<String> selectedDays = [];
                      for (int i = 0; i < week.length; i++) {
                        if (isSelected[i]) {
                          selectedDays.add(week[i]);
                        }
                      }
                      print(selectedDays);
                    },
                    child: Text('선택한 요일 확인'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget hourMinute12HCustomStyle() {
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
        setState(
          () {
            _dateTime = time;
          },
        );
      },
    );
  }
}
