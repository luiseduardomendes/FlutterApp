import 'package:flutter/material.dart';
import 'package:my_app/agenda_hour.dart';
import 'package:my_app/datetime.dart';

class Agenda extends StatefulWidget {
  const Agenda({Key? key}) : super(key: key);

  @override
  State<Agenda> createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  @override
  var hours = [];
  
  Widget build(BuildContext context) {
    for (int i = 0; i < 24; i ++){
      hours.add(
        DateTime(0,0,0,i,30,)
      );
    }
    List<Widget> list = [];
    for (var i in hours){
      list.add(
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AgendaHour(dateTime: i, event: 'Something'),
          )
      );
    }
    return Scaffold(
      appBar: AppBar(title: const Text('Agenda')),
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: ListView(
          children: list,
        ),
      ),
    );
  }
}
