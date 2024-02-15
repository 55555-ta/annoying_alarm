import 'package:annoying_alarm/widgets/alarmsound_button.dart';
import 'package:flutter/material.dart';

class AlarmsoundScreen extends StatelessWidget {
  const AlarmsoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  '사운드 설정',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AlarmsoundButton(), // switch기능 및 클릭시 배경색 바뀌는 기능
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300.0,
              height: 70.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: const Color(0xff0c8e3f7),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '벚꽃엔딩1', // 사운드선택 데이터값부분
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '벚꽃엔딩',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff006ACB),
                      ),
                    ), // 사운드선택 데이터값부분2
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 35,
        ),
        Row(
          children: [
            Container(
              width: 392.7,
              height: 325.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
                color: Color(0xffE8E8E8),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '벨소리',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
