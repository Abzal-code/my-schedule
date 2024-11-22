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
        CustomCard(
          title: 'Get All Events',
          icon: Icons.list,
          onTap: () => _getAllEvents(context),
        ),
        CustomCard(
          title: 'Get by ${DateHelper.formatDate(selectedDate)}',
          icon: Icons.calendar_month,
          onTap: () => _getEventsByDate(context),
        ),
      ],
    );
  }
}

class CustomCard extends StatefulWidget {
  final String title;
  final IconData icon;
  final GestureTapCallback? onTap;

  const CustomCard({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  Color cardColor = Colors.transparent;

  void _onTap() {
    widget.onTap?.call();
    setState(() {
      cardColor = const Color.fromARGB(220, 231, 120, 86);
    });
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        cardColor = Colors.transparent;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: _onTap,
        child: Card(
          color: cardColor,
          child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            iconColor: Colors.white.withOpacity(0.5),
            leading: Icon(
              widget.icon,
            ),
            title: Text(
              widget.title,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
