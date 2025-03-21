import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:intl/intl.dart';

class CreatedAtDateWidget extends StatelessWidget {
  final DateTime date;
  const CreatedAtDateWidget({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(DateFormat("MMM").format(date)),
        Text(date.day.toString()),
      ],
    );
  }
}

class IconDate extends StatelessWidget {
  final Color contextColor = Colors.orange.shade600;
  final String dateInString;
  final String? datePattern;
  IconDate({super.key, required this.dateInString, this.datePattern});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        color: contextColor,
      ),
      child: Row(
        children: [
          Icon(
            RadixIcons.calendar,
            color: contextColor,
          ),
          Gap(2),
          Text(
            DateFormat(datePattern ?? "d MMM").format(
              DateTime.parse(dateInString),
            ),
          )
        ],
      ),
    );
  }
}
