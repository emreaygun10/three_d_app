// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';

class CustomDropdownFormField extends StatefulWidget {
  final List<String> options;
  final O3DController controller;
  const CustomDropdownFormField({
    super.key,
    required this.options,
    required this.controller,
  });
  @override
  _CustomDropdownFormFieldState createState() =>
      _CustomDropdownFormFieldState();
}

class _CustomDropdownFormFieldState extends State<CustomDropdownFormField> {
  String? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: _selectedValue,
      isExpanded: true,
      hint: const Text('Select an animation'),
      icon: const Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      decoration: InputDecoration(
        labelText: 'Animations',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onChanged: (String? newValue) {
        setState(() {
          _selectedValue = newValue;
          widget.controller.animationName = _selectedValue;
          // widget.controller.play();
        });
      },
      items: widget.options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child:  Text(
            value,
            overflow: TextOverflow.ellipsis,
          ),
        );
      }).toList(),
    );
  }
}
