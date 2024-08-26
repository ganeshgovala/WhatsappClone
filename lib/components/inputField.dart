// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsappclone/colors.dart';

class InputField extends StatelessWidget {
  const InputField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Icon(Icons.search, size: 22),
        ),
        suffixIconColor: Colors.white,
        hintText: "Search here...",
        fillColor: searchBarColor,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none
        )
      ),
    );
  }
}