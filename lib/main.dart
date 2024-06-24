import 'package:flutter/material.dart';
import 'package:puzzle/app.dart';
import 'package:puzzle/core/injection/injection.dart';
// import 'package:puzzle/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(MyApp());
}
