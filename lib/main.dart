import 'package:apptask/root/app_root.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'controlar/dio_helper.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
   DioHelper.init();
  runApp(const ProviderScope(child: Myapp()));
}
