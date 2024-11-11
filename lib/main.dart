import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_shedule/core/di.dart';
import 'package:my_shedule/core/router/app_router.dart';
import 'package:my_shedule/core/router/auth_change_notifier.dart';
import 'package:my_shedule/core/services/firebase_options.dart';
import 'package:my_shedule/features/auth/presentation/bloc/auth_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupCoreLocator();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => sl<AuthBloc>()
            ..add(
              const AuthEvent.checkAuthentication(),
            ),
        ),
        // Другие BlocProvider
      ],
      child: const AppStarter(),
    ),
  );
}

class AppStarter extends StatelessWidget {
  const AppStarter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final authBloc = context.read<AuthBloc>();
        final authChangeNotifier = AuthChangeNotifier(authBloc);
        final appRouter = AppRouter(authChangeNotifier);

        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routeInformationParser: appRouter.router.routeInformationParser,
          routerDelegate: appRouter.router.routerDelegate,
          routeInformationProvider: appRouter.router.routeInformationProvider,
          theme: ThemeData(),
        );
      },
    );
  }
}
