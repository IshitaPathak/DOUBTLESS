import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  labelStyle: TextStyle(color: Colors.black),
  // when we click on border, border is enable
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF4939BB), width: 2),
  ),
  // by default border is enabled border
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF4939BB), width: 2),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF4939BB), width: 2),
  ),
);
