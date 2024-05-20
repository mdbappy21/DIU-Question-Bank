import 'package:flutter/material.dart';

class DropdownSearchBox extends StatefulWidget {
  final String hintText;
  final String labelText;
  final List<String> options;

  const DropdownSearchBox({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.options,
  });

  @override
  _DropdownSearchBoxState createState() => _DropdownSearchBoxState();
}

class _DropdownSearchBoxState extends State<DropdownSearchBox> {
  String? _selectedOption;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.hintText);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        readOnly: true,  // Make the TextField read-only
        controller: _controller,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(fontWeight: FontWeight.w400),
          labelText: widget.labelText,
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(16),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.circular(16),
          ),
          fillColor: Colors.teal.shade200,
          filled: true,
          suffixIcon: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _selectedOption,
              icon: Icon(Icons.arrow_drop_down),
              onChanged: (String? newValue) {
                setState(() {
                 // _selectedOption = newValue;
                  _controller.text = newValue!;
                });
              },
              items: widget.options
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
