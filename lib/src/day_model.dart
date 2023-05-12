class DayModel {
  DayModel({
    required this.day,
    required this.onTime,
    required this.offTime,
    required this.closed,
  });
  final String day;
  final String onTime, offTime;
  final bool closed;
}
