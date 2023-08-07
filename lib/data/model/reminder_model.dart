class ReminderModel {
  final int day;
  final int month;
  final int year;
  final String title;
  final String description;
  final String location;
  final int id;
  final String textColor;
  final String widgetColor;

  const ReminderModel({
    required this.day,
    required this.month,
    required this.year,
    required this.title,
    required this.description,
    required this.location,
    required this.id,
    required this.textColor,
    required this.widgetColor,
  });
}
