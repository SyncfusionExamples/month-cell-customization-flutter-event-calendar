import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() => runApp(MonthCellBuilder());

class MonthCellBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SafeArea(
          child: SfCalendar(
            view: CalendarView.month,
            monthCellBuilder: monthCellBuilder,
          ),
        )));
  }

  Widget monthCellBuilder(BuildContext context, MonthCellDetails details) {
    return Column(
      children: [
        Container(
          child: Text(details.date.day.toString()),
        ),
        Container(
          child: IconButton(
            icon: Icon(Icons.date_range),
          ),
        )
      ],
    );
  }
}
