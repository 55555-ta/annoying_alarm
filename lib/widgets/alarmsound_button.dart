import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class AlarmsoundButton extends StatefulWidget {
  const AlarmsoundButton({Key? key}) : super(key: key);

  @override
  State<AlarmsoundButton> createState() => _AlarmsoundButtonState();
}

class _AlarmsoundButtonState extends State<AlarmsoundButton> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 70.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: _isChecked
            ? const Color(0xffC8E3F7)
            : const Color(0xffE8E8E8), // true일때 파란색 false일때 회색
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 30,
        ),
        child: Row(
          children: [
            const Text(
              '진동',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              width: 140,
            ),
            Switch(
              trackOutlineColor: MaterialStateProperty.all(Colors.transparent),
              activeColor: const Color(0xffC8E3F7),
              activeTrackColor: Colors.white,
              inactiveTrackColor: Colors.white,
              inactiveThumbColor: const Color(0xffBABABA),
              thumbColor: MaterialStateProperty.resolveWith((states) {
                if (_isChecked) {
                  return const Color(0xffC8E3F7); // 파란색
                }
                return const Color(0xffBABABA); // 회색
              }),
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value;
                });
                if (_isChecked) {
                  // 스위치가 켜진 경우 진동을 발생시킵니다.
                  Vibration.vibrate(duration: 200); // 진동 시간 설정 (밀리초)
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
