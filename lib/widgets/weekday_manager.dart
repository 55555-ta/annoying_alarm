class WeekdayManager {
  List<bool> isSelected = List.generate(7, (index) => false);

  void toggleDay(int index) {
    isSelected[index] = !isSelected[index];
  }
}
