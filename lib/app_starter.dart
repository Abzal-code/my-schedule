part of 'main.dart';

class AppStarter extends StatelessWidget {
  const AppStarter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <SingleChildWidget>[
        BlocProvider<AuthBloc>(
          create: (BuildContext context) => sl<AuthBloc>()
            ..add(
              const AuthEvent.checkAuthentication(),
            ),
        ),
        BlocProvider(
          create: (BuildContext context) => sl<ScheduleBloc>()
            ..add(
              ScheduleEvent.getEventsByDate(DateTime.now()),
            ),
        ),
      ],
      child: Builder(
        builder: (BuildContext context) {
          final AuthBloc authBloc = context.read<AuthBloc>();
          final AuthChangeNotifier authChangeNotifier =
              AuthChangeNotifier(authBloc);
          final AppRouter appRouter = AppRouter(authChangeNotifier);

          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routeInformationParser: appRouter.router.routeInformationParser,
            routerDelegate: appRouter.router.routerDelegate,
            routeInformationProvider: appRouter.router.routeInformationProvider,
            theme: lightMode,
          );
        },
      ),
    );
  }
}
