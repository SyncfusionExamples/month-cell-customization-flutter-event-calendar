import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() => runApp(const MonthCellBuilder());

class MonthCellBuilder extends StatelessWidget {
  const MonthCellBuilder({super.key});

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
            icon: const Icon(Icons.date_range), onPressed: () {  },
          ),
        )
      ],
    );
  }
}