import 'package:annoying_alarm/widgets/alarm_main_box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      // title: const Text('어노잉 알람', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 130, horizontal: 30),
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
                  ),
                ],
              ),
              const SingleChildScrollView(
                child: Column(
                  children: [
                    AlarmMainBox(),
                    SizedBox(
                      height: 10,
                    ),
                    AlarmMainBox(),
                    SizedBox(
                      height: 10,
                    ),
                    AlarmMainBox(),
                    SizedBox(
                      height: 10,
                    ),
                    AlarmMainBox(),
                    SizedBox(
                      height: 10,
                    ),
                    AlarmMainBox(),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: '알람',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_fire_department),
            label: '앵그리',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '환경설정',
          ),
        ],
        backgroundColor: const Color(0xff008FE0),
        selectedItemColor: const Color(0xff6EBDF7),
        iconSize: 40,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        unselectedItemColor: const Color(0xffffffff),
        onTap: (int index) {
          // 네비게이션 바 항목을 탭했을 때 처리할 내용을 여기에 추가합니다.
        },
      ),
    );
  }
}
