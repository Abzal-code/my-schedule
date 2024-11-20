import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_shedule/core/utils/helpers.dart';
import 'package:my_shedule/features/schedule/presentation/bloc/schedule/schedule_bloc.dart';

class ChooseGetEvents extends StatelessWidget {
  final DateTime selectedDate;
  const ChooseGetEvents({super.key, required this.selectedDate});

  void _getAllEvents(BuildContext context) =>
      context.read<ScheduleBloc>().add(const ScheduleEvent.loadEvents());

  void _getEventsByDate(BuildContext context) =>
      context.read<ScheduleBloc>().add(
            ScheduleEvent.getEventsByDate(selectedDate),
          );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomListTile(
          title: 'Get All Events',
          icon: Icons.list,
          onTap: () => _getAllEvents(context),
        ),
        CustomListTile(
          title: 'Get Events for ${DateHelper.formatDate(selectedDate)}',
          icon: Icons.calendar_month,
          onTap: () => _getEventsByDate(context),
        ),
      ],
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final GestureTapCallback? onTap;

  const CustomListTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          iconColor: Colors.white.withOpacity(0.5),
          tileColor: Colors.transparent,
          leading: Icon(
            icon,
          ),
          title: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
