// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../counter/counter_cubit.dart' as _i8;
import '../../counter/counter_presentation_screen.dart' as _i2;
import '../../counter/counter_screen.dart' as _i3;
import '../../onboarding/login_screen.dart' as _i4;
import '../../onboarding/onboarding_screen.dart' as _i1;
import 'guards/auth_guard.dart' as _i7;

class RootRouter extends _i5.RootStackRouter {
  RootRouter(
      {_i6.GlobalKey<_i6.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i7.AuthGuard authGuard;

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    OnboardingRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.OnboardingScreen());
    },
    CounterPresentationRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.CounterPresentationScreen());
    },
    CounterRoute.name: (routeData) {
      final args = routeData.argsAs<CounterRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.CounterScreen(
              key: args.key,
              title: args.title,
              counterCubit: args.counterCubit));
    },
    LoginRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.LoginScreen());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(OnboardingRoute.name, path: '/'),
        _i5.RouteConfig(CounterPresentationRoute.name,
            path: 'counter', guards: [authGuard]),
        _i5.RouteConfig(CounterRoute.name, path: 'app'),
        _i5.RouteConfig(LoginRoute.name, path: 'login')
      ];
}

/// generated route for
/// [_i1.OnboardingScreen]
class OnboardingRoute extends _i5.PageRouteInfo<void> {
  const OnboardingRoute() : super(OnboardingRoute.name, path: '/');

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i2.CounterPresentationScreen]
class CounterPresentationRoute extends _i5.PageRouteInfo<void> {
  const CounterPresentationRoute()
      : super(CounterPresentationRoute.name, path: 'counter');

  static const String name = 'CounterPresentationRoute';
}

/// generated route for
/// [_i3.CounterScreen]
class CounterRoute extends _i5.PageRouteInfo<CounterRouteArgs> {
  CounterRoute(
      {_i6.Key? key,
      required String title,
      required _i8.CounterCubit counterCubit})
      : super(CounterRoute.name,
            path: 'app',
            args: CounterRouteArgs(
                key: key, title: title, counterCubit: counterCubit));

  static const String name = 'CounterRoute';
}

class CounterRouteArgs {
  const CounterRouteArgs(
      {this.key, required this.title, required this.counterCubit});

  final _i6.Key? key;

  final String title;

  final _i8.CounterCubit counterCubit;

  @override
  String toString() {
    return 'CounterRouteArgs{key: $key, title: $title, counterCubit: $counterCubit}';
  }
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login');

  static const String name = 'LoginRoute';
}
