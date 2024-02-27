import 'package:flutter/material.dart';

class AlarmMainBox extends StatefulWidget {
  const AlarmMainBox({Key? key}) : super(key: key);

  @override
  State<AlarmMainBox> createState() => _AlarmMainBoxState();
}

class _AlarmMainBoxState extends State<AlarmMainBox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _isChecked ? const Color(0xffC8E3F7) : const Color(0xffE8E8E8),
        borderRadius: BorderRadius.circular(30),
      ),
      width: 650,
      height: 130,
      child: Padding(
        padding: const EdgeInsets.symmetric(
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
                  padding: const EdgeInsets.only(
                    top: 15,
                  ),
                  child: Text(
                    '알람 이름',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color:  _isChecked ? const Color(0xff000000) : const Color(0xff939393),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                  ),
                  child: Text(
                    '일 월 화 수 목 금 토 일',
                    style: TextStyle(
                      color: _isChecked ? const Color(0xff000000) : const Color(0xff939393),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                 Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Text(
                    '오전',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                       color:  _isChecked ? const Color(0xff000000) : const Color(0xff939393),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 130.0),
                  child: Text(
                    '8:00',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color:  _isChecked ? const Color(0xff000000) : const Color(0xff939393),
                    ),
                  ),
                ),
                Switch(
                  trackOutlineColor:
                      MaterialStateProperty.all(Colors.transparent),
                  activeColor: const Color(0xff008FE0),
                  activeTrackColor: Colors.white,
                  inactiveTrackColor: Colors.white,
                  inactiveThumbColor: const Color(0xffBABABA),
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value;
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
