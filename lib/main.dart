import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_shedule/core/di.dart';
import 'package:my_shedule/core/router/app_router.dart';
import 'package:my_shedule/core/router/auth_change_notifier.dart';
import 'package:my_shedule/core/services/firebase_options.dart';
import 'package:my_shedule/features/auth/presentation/bloc/auth_bloc.dart';

part 'app_starter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupCoreLocator();
  runApp(
    const AppStarter(),
  );
}
