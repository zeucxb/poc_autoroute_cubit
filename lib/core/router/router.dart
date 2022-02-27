import 'package:auto_route/auto_route.dart';
import 'package:poc_autoroute_cubit/core/router/guards/auth_guard.dart';
import 'package:poc_autoroute_cubit/counter/counter_presentation_screen.dart';
import 'package:poc_autoroute_cubit/counter/counter_screen.dart';
import 'package:poc_autoroute_cubit/onboarding/login_screen.dart';
import 'package:poc_autoroute_cubit/onboarding/onboarding_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: OnboardingScreen,
    ),
    AutoRoute(
      path: 'counter',
      page: CounterPresentationScreen,
      guards: [AuthGuard],
      children: [
        // AutoRoute(
        //   path: 'app',
        //   page: CounterScreen,
        // ),
      ],
    ),
    AutoRoute(
      path: 'app',
      page: CounterScreen,
    ),
    AutoRoute(
      path: 'login',
      page: LoginScreen,
    ),
  ],
)
class $RootRouter {}
