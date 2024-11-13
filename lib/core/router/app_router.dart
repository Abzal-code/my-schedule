import 'package:go_router/go_router.dart';
import 'package:my_shedule/core/error/error_screen.dart';
import 'package:my_shedule/core/router/auth_change_notifier.dart';
import 'package:my_shedule/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:my_shedule/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:my_shedule/features/auth/presentation/screens/splash_screen.dart';
import 'package:my_shedule/features/schedule/presentation/pages/schedule_screen.dart';

class Routes {
  static const String splash = '/';
  static const String signIn = '/signIn';
  static const String signUp = '/signUp';
  static const String schedule = '/schedule';
  static const String error = '/error';
}

// GoRouter configuration
class AppRouter {
  final AuthChangeNotifier authChangeNotifier;

  AppRouter(this.authChangeNotifier);

  late final GoRouter router = GoRouter(
    initialLocation: Routes.splash,
    debugLogDiagnostics: true,
    routerNeglect: false,
    refreshListenable: authChangeNotifier,
    redirect: (context, state) {
      final isAuthenticated = authChangeNotifier.isAuthenticated;
      final isCheckingAuth = authChangeNotifier.isCheckingAuth;

      final isOnSignIn = state.uri.toString() == Routes.signIn;
      final isOnSignUp = state.uri.toString() == Routes.signUp;
      final isOnSplash = state.uri.toString() == Routes.splash;

      if (isCheckingAuth) {
        return isOnSplash ? null : Routes.splash;
      }

      if (!isAuthenticated) {
        if (!isOnSignIn && !isOnSignUp) return Routes.signIn;
      }

      if (isAuthenticated) {
        if (isOnSignIn || isOnSignUp || isOnSplash) return Routes.schedule;
      }

      return null;
    },
    errorBuilder: (context, state) => ErrorScreen(error: state.error),
    routes: [
      GoRoute(
        path: Routes.splash,
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: Routes.signIn,
        name: 'signIn',
        builder: (context, state) => SignInScreen(),
      ),
      GoRoute(
        path: Routes.signUp,
        name: 'signUp',
        builder: (context, state) => SignUpScreen(),
      ),
      GoRoute(
        path: Routes.schedule,
        name: 'schedule',
        builder: (context, state) => const ScheduleScreen(),
      ),
    ],
  );
}
