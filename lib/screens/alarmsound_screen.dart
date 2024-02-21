import 'package:flutter/material.dart';
import 'package:annoying_alarm/widgets/alarmsound_tiltebox.dart';
import 'package:annoying_alarm/widgets/alarmsound_button.dart';
import 'package:annoying_alarm/widgets/alarmsound_bell.dart';

class AlarmsoundScreen extends StatefulWidget {
  const AlarmsoundScreen({Key? key}) : super(key: key);

  @override
  _AlarmsoundScreenState createState() => _AlarmsoundScreenState();
}

class _AlarmsoundScreenState extends State<AlarmsoundScreen> {
  bool _isBellSoundVisible = false;
  bool _isChecked = false;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 60),
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
          const SizedBox(height: 40),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AlarmsoundButton(), // switch기능 및 클릭시 배경색 바뀌는 기능
            ],
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              setState(() {
                _isChecked = !_isChecked;
                _isBellSoundVisible = !_isBellSoundVisible;
              });
            },
            child: alarmsound_tiltebox(_isChecked),
          ),
          const SizedBox(
            height: 35,
          ),
          BellSoundContainer(isVisible: _isBellSoundVisible),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
        ],
        // 선택된 아이템 색상 설정
        unselectedItemColor: const Color(0xffC8E3F7),
        selectedItemColor: Colors.white,
        backgroundColor: const Color(0xff008FE0),
        // 현재 선택된 인덱스
        currentIndex: _selectedIndex,
        // 아이템을 클릭했을 때 호출되는 콜백 함수
        onTap: (index) {
          // TODO: 아이템을 클릭했을 때의 동작 구현
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
