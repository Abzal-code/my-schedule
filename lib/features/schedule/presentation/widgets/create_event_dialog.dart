import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_shedule/core/di.dart';
import 'package:my_shedule/core/utils/helpers.dart';
import 'package:my_shedule/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:my_shedule/features/schedule/domain/entities/event_entity.dart';
import 'package:my_shedule/features/schedule/presentation/bloc/schedule/schedule_bloc.dart';

class CreateEventDialog extends StatefulWidget {
  final DateTime selectedDate;
  const CreateEventDialog({super.key, required this.selectedDate});

  @override
  State<CreateEventDialog> createState() => _CreateEventDialogState();
}

class _CreateEventDialogState extends State<CreateEventDialog> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  final TextEditingController _selectedDateController = TextEditingController();

  @override
  void initState() {
    _selectedDateController.text = DateHelper.formatDate(widget.selectedDate);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Create Event',
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextField(
                icon: Icons.title,
                label: 'Title',
                controller: titleController,
              ),
              const SizedBox(height: 32),
              CustomTextField(
                icon: Icons.description,
                label: 'Description',
                controller: descriptionController,
                maxLines: 3,
              ),
              const SizedBox(height: 32),
              CustomTextField(
                icon: Icons.calendar_today,
                label: 'Selected Date',
                controller: _selectedDateController,
                readOnly: true,
              ),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
          child: const Text('Accept'),
          onPressed: () => _createEvent(),
        ),
      ],
    );
  }

  void _createEvent() {
    if (_formKey.currentState!.validate()) {
      EventEntity event = EventEntity(
        title: titleController.text,
        description: descriptionController.text,
        eventDate: widget.selectedDate,
        isCompleted: false,
      );
      print('start _create event from dialog: ${event.toMap()}');
      sl<ScheduleBloc>().add(
        ScheduleEvent.addEvent(event),
      );
      Navigator.of(context).pop();
    }
  }
}
