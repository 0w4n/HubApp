import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:hubapp/main.dart';

class ChangeTime {
  late DateTime today;

  void initState() {
    today = DateTime.now();
  }
}