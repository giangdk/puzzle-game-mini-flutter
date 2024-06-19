import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:puzzle/app.dart';
import 'package:puzzle/core/config/env_config.dart';
import 'package:puzzle/core/injection/injection.dart';
import 'package:puzzle/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await EnvConfig.loadEnv();
  configureDependencies();
  runApp(MyApp());
}
