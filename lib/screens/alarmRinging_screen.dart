import 'package:flutter/material.dart';
import 'package:alarm/alarm.dart';

class AlarmRingingScreen extends StatelessWidget {
  const AlarmRingingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 187, 238, 255),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const Text(
                  "09:03",
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    height: 1.0,
                  ),
                ),
                const Text(
                  "2월 7일 수요일",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Icon(
                        Icons.watch_later_outlined,
                        size: 30,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "출근날",
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(20)),
                  onPressed: () {},
                  child: const Text(
                    "X",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 20)),
              onPressed: () {},
              child: const Text(
                "5분 후 다시 알림",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
