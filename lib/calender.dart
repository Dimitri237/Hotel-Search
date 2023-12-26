import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';



class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TableCalendar Example')),
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Text('Selected day: $today'),
        Container(
          child: TableCalendar(
            locale: "en_US",
            rowHeight: 33,
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (day) => isSameDay(day, today),
            focusedDay: today,
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 10, 16),
            onDaySelected: _onDaySelected,
          ),
        )
      ],
    );
  }
}