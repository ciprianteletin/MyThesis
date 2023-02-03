import 'package:flutter/material.dart';
import 'package:my_thesis/app_styles.dart';
import 'package:my_thesis/page/notification/widgets/build_schedule.dart';
import 'package:my_thesis/page/notification/widgets/header.dart';

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 242, 223),
      body: ListView(
        children: <Widget>[
          Header(),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Feb",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text("31", style: kCalendarDay),
                    const Text("01", style: kCalendarDay),
                    const Text("02", style: kCalendarDay),
                    Text(
                      "03",
                      style: kCalendarDay.copyWith(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Text("04", style: kCalendarDay),
                    const Text("05", style: kCalendarDay),
                    const Text("06", style: kCalendarDay),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 160.0, top: 3.0),
                  child: Text(
                    "FRY",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(40.0),
            decoration: BoxDecoration(
              color: LightGreyColors.lightGrey5,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0),
              ),
            ),
            child: Column(
              children: [
                BuildSchedule(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
