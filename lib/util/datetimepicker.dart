import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePicker extends StatefulWidget {
  final TextEditingController controller;
  const DateTimePicker({required this.controller, super.key});

  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  void _updateController() {
    if (selectedDate != null && selectedTime != null) {
      final DateTime dateTime = DateTime(
        selectedDate!.year,
        selectedDate!.month,
        selectedDate!.day,
        selectedTime!.hour,
        selectedTime!.minute,
      ).subtract(const Duration(hours: 7));
      final DateFormat outputFormat = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
      widget.controller.text = outputFormat.format(dateTime);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: widget.controller,
          readOnly: true,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: const Icon(Icons.calendar_today),
              onPressed: () async {
                await _selectDate(context);
                await _selectTime(context);
                _updateController();
              },
            ),
          ),
        ),
      ],
    );
  }
}
