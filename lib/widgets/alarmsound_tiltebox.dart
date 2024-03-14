import 'package:flutter/material.dart';

class alarmsound_tiltebox extends StatefulWidget {
  final bool isChecked; // isChecked 변수 추가
  final int selectedBellIndex; // selectedBellIndex 변수 추가

  const alarmsound_tiltebox(this.isChecked, this.selectedBellIndex, {Key? key})
      : super(key: key); // 생성자 수정

  @override
  State<alarmsound_tiltebox> createState() => _alarmsound_tilteboxState();
}

class _alarmsound_tilteboxState extends State<alarmsound_tiltebox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 70.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: widget.isChecked
            ? const Color(0xffC8E3F7)
            : const Color(0xffE8E8E8), // widget 변수를 통해 isChecked 변수에 접근
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '벚꽃엔딩${widget.selectedBellIndex + 1}', // 선택된 벨소리에 따라 텍스트 변경
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
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
    );
  }
}
