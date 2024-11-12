import 'package:flutter/material.dart';
import 'package:my_shedule/features/auth/presentation/widgets/custom_text_field.dart';

class CreateEventScreen extends StatefulWidget {
  const CreateEventScreen({super.key});

  @override
  State<CreateEventScreen> createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  DateTime firstDate = DateTime.now();
  DateTime lastDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Event'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextField(
                  icon: Icons.title,
                  hintText: 'Title',
                  controller: titleController,
                ),
                const SizedBox(height: 32),
                CustomTextField(
                  icon: Icons.description,
                  hintText: 'Description',
                  controller: descriptionController,
                ),
                const SizedBox(height: 32),
                DatePickerDialog(
                  firstDate: firstDate,
                  lastDate: lastDate,
                  initialCalendarMode: DatePickerMode.day,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
