import 'package:flutter/material.dart';
import 'package:my_shedule/core/utils/helpers.dart';
import 'package:my_shedule/features/auth/presentation/widgets/custom_button.dart';
import 'package:my_shedule/features/auth/presentation/widgets/custom_text_field.dart';

class CreateEventScreen extends StatefulWidget {
  final DateTime selectedDate;
  const CreateEventScreen({super.key, required this.selectedDate});

  @override
  State<CreateEventScreen> createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  final TextEditingController _selectedDateController = TextEditingController();
  DateTime firstDate = DateTime.now();

  @override
  void initState() {
    _selectedDateController.text = DateHelper.formatDate(widget.selectedDate);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            const SizedBox(height: 32),
            CustomButton(
              label: 'Create',
              onPressed: () {
                // if (_formKey.currentState!.validate()) {
                //   print('validate');
                // } else {
                //   print('not validate');
                // }
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
