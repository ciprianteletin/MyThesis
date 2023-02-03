import 'package:flutter/material.dart';
import 'package:my_thesis/page/notification/widgets/schedule.dart';
import 'package:intl/intl.dart';

import '../../../app_styles.dart';

class BuildSchedule extends StatelessWidget {
  final DateFormat dateFormat = DateFormat.yMd('en_US');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: schedules.length,
      itemBuilder: (BuildContext context, int index) {
        Schedule schedule = schedules[index];
        return Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "${dateFormat.format(schedule.time)}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(width: 20.0),
                _getTime(schedule, context),
                const SizedBox(width: 15.0),
                Text(
                  schedule.subject,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(width: 15.0),
                schedule.isHappening
                    ? Container(
                        height: 25.0,
                        width: 35.0,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: const Center(
                            child: Text(
                          "Now",
                          style: TextStyle(color: Colors.white),
                        )),
                      )
                    : Container(),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 117.0, bottom: 20.0),
                  width: 2,
                  height: 100.0,
                  color: schedule.isPassed
                      ? kTextColor.withOpacity(0.3)
                      : kTextColor,
                ),
                const SizedBox(width: 15.0),
                Flexible(
                    child: Text(
                  schedule.description,
                  style: const TextStyle(color: kTextColor),
                ))
              ],
            ),
            const SizedBox(width: 20.0),
          ],
        );
      },
    );
  }

  _getTime(Schedule schedule, context) {
    return Container(
      height: 25.0,
      width: 25.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: schedule.isPassed
              ? Colors.purple.withOpacity(0.3)
              : Colors.purple,
        ),
      ),
      child: _getChild(schedule, context),
    );
  }

  _getChild(Schedule schedule, context) {
    if (schedule.isPassed) {
      return Icon(
        Icons.check,
        color:
            schedule.isPassed ? Colors.purple.withOpacity(0.3) : Colors.purple,
        size: 15.0,
      );
    } else if (schedule.isHappening) {
      return Container(
        margin: const EdgeInsets.all(5.0),
        decoration: const BoxDecoration(
          color: Colors.purple,
          shape: BoxShape.circle,
        ),
      );
    }
    return null;
  }
}
