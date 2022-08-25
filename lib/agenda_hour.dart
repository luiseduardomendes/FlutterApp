import 'package:flutter/material.dart';
import 'package:my_app/datetime.dart';

class AgendaHour extends StatefulWidget {
  DateTime dateTime;
  String event;
  AgendaHour({Key? key, required this.dateTime, required this.event}) : super(key: key);

  @override
  State<AgendaHour> createState() => _AgendaHourState();
}

class _AgendaHourState extends State<AgendaHour> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Theme.of(context).colorScheme.primary,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${widget.dateTime.hour}:${widget.dateTime.minute}',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.event,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ],
      ),
    );
  }
}
