import 'package:flutter/material.dart';

import '../../model/task.dart';

class TaskListPage extends StatefulWidget {
  const TaskListPage({Key? key}) : super(key: key);

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  late int count ;

  @override
  void initState(){
    count = 0;
    super.initState();
  } //when created

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  } //when disposed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task List'),
        leading: GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Center(child: Text("Back"))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView.separated(
          itemCount: taskList.length,
            separatorBuilder: (_,__) => const SizedBox(height: 16) ,
            itemBuilder: (_, index) => _TaskItem(taskList[index], onTap: (){
              taskList[index].done = !taskList[index].done;
              setState(() {
              });
            },),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
class _TaskItem extends StatefulWidget {
  const _TaskItem(this.task, {Key? key, this.onTap}) : super(key: key);

  final Task task;
  final VoidCallback? onTap;

  @override
  State<_TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<_TaskItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21.0),
        ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 18),
            child: Row(
              children: [
                Icon(
                    widget.task.done
                        ? Icons.check_box_outline_blank
                        : Icons.check_box_rounded,
                    color: Theme.of(context).colorScheme.primary,),
                Text(widget.task.title),
              ],
            ),
          )),
    );
  }
}

final taskList = <Task>[
  Task('Task 1'),
  Task('Shop'),
];