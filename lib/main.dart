import 'package:flutter/material.dart';
import 'package:poc_autoroute_cubit/core/router/guards/auth_guard.dart';
import 'package:poc_autoroute_cubit/core/router/router.gr.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _rootRouter = RootRouter(
    authGuard: AuthGuard(),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      routerDelegate: _rootRouter.delegate(),
      routeInformationProvider: _rootRouter.routeInfoProvider(),
      routeInformationParser: _rootRouter.defaultRouteParser(),
      builder: (_, router) {
        return router!;
      },
    );
  }
}
