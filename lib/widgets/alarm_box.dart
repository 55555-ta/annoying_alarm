import 'package:annoying_alarm/widgets/alarm_button.dart';
import 'package:flutter/material.dart';

class AlarmBox extends StatelessWidget {
  const AlarmBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
              color: const Color(0xffc8e3f7),
              borderRadius: BorderRadius.circular(30),
            ),
            width: 650,
            height: 130,
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 15,
                        ),
                        child: Text(
                          '알람 이름',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 15,
                        ),
                        child: Text('일 월 화 수 목 금 토 일',),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                        ),
                        child: Text(
                          '오전',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 130.0),
                        child: Text(
                          '8:00',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      AlarmButton()     
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}