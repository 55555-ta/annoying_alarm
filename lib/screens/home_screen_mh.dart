import 'package:annoying_alarm/widget/alarm_box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '2월 10일 (목) 오전 7:30',
                style: TextStyle(
                  color: Color(0xff5e5e5e),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 2), // Add some spacing between the rows
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '14시간 55분후에',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '알람이 울립니다.',
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  '편집',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  '+',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          const AlarmBox(),
          const SizedBox(
            height: 10,
          ),
          const AlarmBox(),
                    const SizedBox(
            height: 10,
          ),
          const AlarmBox(),
        ],
      ),
    );
  }
}
