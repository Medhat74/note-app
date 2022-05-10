import 'package:flutter/material.dart';
import 'package:notes_app/services/remote/dio_helper.dart';
import 'package:notes_app/src/app_root.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(AppRoot());
}