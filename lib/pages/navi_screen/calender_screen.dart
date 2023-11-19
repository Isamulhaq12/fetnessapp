import 'package:flutter/material.dart';
import 'package:new_app/consts/colors.dart';
import 'package:new_app/consts/images.dart';
import 'package:new_app/custom_widget/my_text.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScerren extends StatefulWidget {
  const CalendarScerren({super.key});

  @override
  State<CalendarScerren> createState() => _CalendarScerrenState();
}

class _CalendarScerrenState extends State<CalendarScerren> {
  DateTime today = DateTime.now();
  void _onDaySelected (DateTime day,DateTime focusedDay){
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: MyText(
          text: "Calendar",
          fontSize: 20,
          textColor: Colors.white,
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage(avatar),
          )
        ],
        backgroundColor: bluColor,
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: bluColor,
      body: Column(
        children: [
          TableCalendar(
            calendarStyle: CalendarStyle(),
             locale: "en_us",
            headerStyle: HeaderStyle(formatButtonVisible: false,titleCentered: true),
            availableGestures: AvailableGestures.all,
            rowHeight: 90,
              focusedDay:today,
              firstDay: DateTime.utc(2010,10,16,),
              lastDay: DateTime.utc(2030,1,10),
            onDaySelected: _onDaySelected,
            selectedDayPredicate: (day) => isSameDay(day,today),
          ),
        ],
      ),
    );
  }
}
