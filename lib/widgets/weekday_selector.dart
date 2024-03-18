import 'package:flutter/material.dart';

class WeekdaySelector extends StatelessWidget {
  final List<String> week;
  final List<bool> isSelected;
  final Function(int) onToggle;

  const WeekdaySelector({
    required this.week,
    required this.isSelected,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '요일 선택',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0),
        Center(
          child: Wrap(
            spacing: 10,
            children: List.generate(
              week.length,
              (index) => GestureDetector(
                onTap: () {
                  onToggle(index);
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: isSelected[index]
                        ? Color(0xFFC8E3F7)
                        : Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(
                      1000,
                    ),
                  ),
                  child: Text(
                    week[index],
                    style: TextStyle(
                      color: isSelected[index] ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        // ElevatedButton(
        //   onPressed: () {
        //     List<String> selectedDays = [];
        //     for (int i = 0; i < week.length; i++) {
        //       if (isSelected[i]) {
        //         selectedDays.add(week[i]);
        //       }
        //     }
        //     print(selectedDays);
        //   },
        //   child: Text('선택한 요일 확인'),
        // ),
      ],
    );
  }
}
