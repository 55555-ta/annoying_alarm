// import 'package:flutter/material.dart';
// import 'package:alarm/alarm.dart';

// class AlarmRingingScreen extends StatelessWidget {
//   final AlarmSettings alarmSettings;

//   AlarmRingingScreen({super.key, required this.alarmSettings});

//   final now = DateTime.now();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color.fromARGB(255, 187, 238, 255),
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Column(
//               children: [
//                 Text(
//                   "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}",
//                   style: const TextStyle(
//                     fontSize: 100,
//                     fontWeight: FontWeight.bold,
//                     height: 1.0,
//                     color: Colors.black,
//                     decoration: TextDecoration.none,
//                   ),
//                 ),
//                 Text(
//                   "${now.month}월 ${now.day}일 ${getWeekdayString(now.weekday)}",
//                   style: const TextStyle(
//                     fontSize: 20,
//                     color: Colors.black,
//                     decoration: TextDecoration.none,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Padding(
//                       padding: EdgeInsets.only(top: 5),
//                       child: Icon(
//                         Icons.watch_later_outlined,
//                         size: 30,
//                       ),
//                     ),
//                     const SizedBox(width: 10),
//                     Text(
//                       alarmSettings.notificationTitle,
//                       style: const TextStyle(
//                         fontSize: 30,
//                         color: Colors.black,
//                         decoration: TextDecoration.none,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 30),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color.fromARGB(255, 255, 255, 255),
//                       shape: const CircleBorder(),
//                       padding: const EdgeInsets.all(20)),
//                   onPressed: () {
//                     Alarm.stop(alarmSettings.id)
//                         .then((_) => Navigator.pop(context));
//                   },
//                   child: const Text(
//                     "X",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color.fromARGB(255, 255, 255, 255),
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 80, vertical: 20)),
//               onPressed: () {},
//               child: const Text(
//                 "5분 후 다시 알림",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   getWeekdayString(int weekday) {
//     switch (weekday) {
//       case 1:
//         return '월요일';
//       case 2:
//         return '화요일';
//       case 3:
//         return '수요일';
//       case 4:
//         return '목요일';
//       case 5:
//         return '금요일';
//       case 6:
//         return '토요일';
//       default:
//         return '일요일';
//     }
//   }
// }
