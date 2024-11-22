import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_shedule/core/utils/extensions.dart';
import 'package:my_shedule/core/utils/helpers.dart';
import 'package:my_shedule/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:my_shedule/features/schedule/domain/entities/event_entity.dart';
import 'package:my_shedule/features/schedule/presentation/bloc/schedule/schedule_bloc.dart';

class CreateEventDialog extends StatefulWidget {
  final DateTime selectedDate;
  final EventEntity? event;
  const CreateEventDialog({super.key, required this.selectedDate, this.event});

  @override
  State<CreateEventDialog> createState() => _CreateEventDialogState();
}

class _CreateEventDialogState extends State<CreateEventDialog> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _selectedDateController = TextEditingController();
  final TextEditingController _selectedTimeController = TextEditingController();
  TimeOfDay picked = TimeOfDay.now();

  @override
  void initState() {
    _selectedDateController.text = DateHelper.formatDate(widget.selectedDate);
    _titleController.text = widget.event?.title ?? '';
    _descriptionController.text = widget.event?.description ?? '';
    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _selectedDateController.dispose();
    _selectedTimeController.dispose();
    super.dispose();
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
            children: <Widget>[
              CustomTextField(
                icon: Icons.title,
                label: 'Title',
                controller: _titleController,
              ),
              const SizedBox(height: 32),
              CustomTextField(
                icon: Icons.description,
                label: 'Description',
                controller: _descriptionController,
                maxLines: 3,
              ),
              const SizedBox(height: 32),
              CustomTextField(
                icon: Icons.calendar_today,
                label: 'Selected Date',
                controller: _selectedDateController,
                readOnly: true,
              ),
              const SizedBox(height: 32),
              CustomTextField(
                icon: Icons.access_time,
                label: 'Selected Time',
                controller: _selectedTimeController,
                onTap: () => pickTime(context),
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

  Future<void> pickTime(BuildContext context) async {
    picked = (await context.showCustomTimePicker(
      use24HourFormat: true,
    ))!;
    _selectedTimeController.text = picked.format(context);
    print('picked time $picked');
  }

  void _createEvent() {
    if (_formKey.currentState!.validate()) {
      EventEntity event = EventEntity(
        title: _titleController.text,
        id: widget.event?.id,
        description: _descriptionController.text,
        eventDate: widget.selectedDate,
        eventTime: picked,
        isCompleted: false,
      );
      widget.event == null
          ? context.read<ScheduleBloc>().add(
                ScheduleEvent.addEvent(event),
              )
          : context.read<ScheduleBloc>().add(
                ScheduleEvent.updateEvent(event),
              );
      Navigator.of(context).pop();
    }
  }
}
