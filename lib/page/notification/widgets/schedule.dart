class Schedule {
  final String subject;
  final String description;
  final DateTime time;
  bool isPassed;
  bool isHappening;

  Schedule(
      {required this.subject,
      required this.time,
      required this.description,
      required this.isPassed,
      required this.isHappening});
}

List<Schedule> schedules = [
  Schedule(
      subject: "Choose coordinator",
      description:
          'Navigate through the thesis proposals and choose the topic that interest you the most. Hurry up, the places are limited',
      time: DateTime.parse("2022-11-08 23:59:00"),
      isPassed: true,
      isHappening: false),
  Schedule(
      subject: "Intermediary submission",
      description: 'Prepare and present the State of the Art of your thesis',
      time: DateTime.parse("2023-02-11 12:30:00"),
      isPassed: false,
      isHappening: true),
  Schedule(
      subject: "Paper presentation",
      description:
          'Present to your coordinator the current status of the thesis/application',
      time: DateTime.parse("2023-04-11 14:30:00"),
      isPassed: false,
      isHappening: false),
  Schedule(
      subject: "Final steps",
      description: 'Fine tune the last details of your thesis',
      time: DateTime.parse("2023-05-30 09:30:00"),
      isPassed: false,
      isHappening: false),
  Schedule(
      subject: "Submit the thesis",
      description: 'Submit your paper and enjoy th vacation!',
      time: DateTime.parse("2023-07-10 07:30:00"),
      isPassed: false,
      isHappening: false),
];
