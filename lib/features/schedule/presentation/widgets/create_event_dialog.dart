import 'package:flutter/material.dart';
import 'package:my_shedule/core/di.dart';
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
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _selectedDateController = TextEditingController();

  @override
  void initState() {
    _selectedDateController.text = DateHelper.formatDate(widget.selectedDate);
    _titleController.text = widget.event?.title ?? '';
    _descriptionController.text = widget.event?.description ?? '';
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
        title: _titleController.text,
        id: widget.event?.id,
        description: _descriptionController.text,
        eventDate: widget.selectedDate,
        isCompleted: false,
      );
      widget.event == null
          ? sl<ScheduleBloc>().add(
              ScheduleEvent.addEvent(event),
            )
          : sl<ScheduleBloc>().add(
              ScheduleEvent.updateEvent(event),
            );
      Navigator.of(context).pop();
    }
  }
}
