import 'package:flutter/material.dart';
import 'package:my_thesis/model/task_model.dart';
import 'package:my_thesis/page/task/task_item.dart';

import '../../app_styles.dart';

class TasksListTiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: tasksList.length,
      itemBuilder: (BuildContext context, int index) {
        Task task = tasksList[index];
        return GestureDetector(
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (ctx) => TaskItemScreen(task))),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 30.0),
                height: 130.0,
                width: 15.0,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30.0),
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                height: 130.0,
                width: 326.0,
                decoration: const BoxDecoration(
                  color: kCardColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      task.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      children: [
                        Icon(
                          Icons.receipt,
                          color: Theme.of(context).colorScheme.secondary,
                          size: 17.0,
                        ),
                        const SizedBox(width: 10.0),
                        Text(
                          task.category,
                          style: const TextStyle(
                            color: kTextColor,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
