import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String placeholder;
  final String hint;

  const SearchBox({super.key, this.suffixIcon, this.prefixIcon, required this.placeholder, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16),
      child: TextField(
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
        maxLength: 25,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(fontWeight: FontWeight.w400),
          labelText: placeholder,
          labelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(width: 4),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 4, color: Colors.black),
            borderRadius: BorderRadius.circular(16),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 4, color: Colors.black),
            borderRadius: BorderRadius.circular(16),
          ),
          fillColor: Colors.teal.shade200,
          filled: true,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
