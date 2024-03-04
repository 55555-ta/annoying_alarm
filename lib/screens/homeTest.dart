// import 'dart:async';

// import 'package:annoying_alarm/screens/alarmRinging_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:alarm/alarm.dart';
// import 'package:permission_handler/permission_handler.dart';

// class HomeTest extends StatefulWidget {
//   const HomeTest({super.key});

//   @override
//   State<HomeTest> createState() => _HomeTestState();
// }

// class _HomeTestState extends State<HomeTest> {
//   late List<AlarmSettings> alarms;

//   static StreamSubscription<AlarmSettings>? subscription;

//   @override
//   void initState() {
//     super.initState();
//     if (Alarm.android) {
//       checkAndroidNotificationPermission();
//     }
//     loadAlarms();
//     subscription ??= Alarm.ringStream.stream.listen(
//       (alarmSettings) => navigateToRingScreen(alarmSettings),
//     );
//   }

//   Future<void> navigateToRingScreen(AlarmSettings alarmSettings) async {
//     await Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => AlarmRingingScreen(alarmSettings: alarmSettings),
//       ),
//     );
//     loadAlarms();
//   }

//   Future<void> checkAndroidNotificationPermission() async {
//     final status = await Permission.notification.status;
//     if (status.isDenied) {
//       alarmPrint('Requesting notification permission...');
//       final res = await Permission.notification.request();
//       alarmPrint(
//         'Notification permission ${res.isGranted ? '' : 'not'} granted.',
//       );
//     }
//   }

//   void loadAlarms() {
//     setState(() {
//       alarms = Alarm.getAlarms();
//       alarms.sort((a, b) => a.dateTime.isBefore(b.dateTime) ? 0 : 1);
//     });
//   }

//   bool showMenu = false;

//   Future<void> onPressButton(int delayInHours) async {
//     DateTime dateTime = DateTime.now().add(Duration(hours: delayInHours));
//     double? volume;

//     if (delayInHours != 0) {
//       dateTime = dateTime.copyWith(second: 0, millisecond: 0);
//       volume = 0.5;
//     }

//     setState(() => showMenu = false);

//     final alarmSettings = AlarmSettings(
//       id: DateTime.now().millisecondsSinceEpoch % 10000,
//       dateTime: dateTime,
//       assetAudioPath: 'assets/audios/samsung_galaxy_s24.mp3',
//       volume: volume,
//       notificationTitle: '출근1',
//       notificationBody: '출근',
//     );

//     await Alarm.set(alarmSettings: alarmSettings);

//     loadAlarms();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () => onPressButton(0),
//       child: const Text('알람'),
//     );
//   }
// }
