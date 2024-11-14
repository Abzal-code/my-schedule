part of 'main.dart';

class AppStarter extends StatelessWidget {
  const AppStarter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => sl<AuthBloc>()
            ..add(
              const AuthEvent.checkAuthentication(),
            ),
        ),
        BlocProvider(
          create: (context) => sl<ScheduleBloc>()
            ..add(
              const ScheduleEvent.loadEvents(),
            ),
        ),
      ],
      child: Builder(
        builder: (context) {
          final authBloc = context.read<AuthBloc>();
          final authChangeNotifier = AuthChangeNotifier(authBloc);
          final appRouter = AppRouter(authChangeNotifier);

          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routeInformationParser: appRouter.router.routeInformationParser,
            routerDelegate: appRouter.router.routerDelegate,
            routeInformationProvider: appRouter.router.routeInformationProvider,
            theme: ThemeData(scaffoldBackgroundColor: Colors.transparent),
          );
        },
      ),
    );
  }
}
