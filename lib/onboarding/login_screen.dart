import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:poc_autoroute_cubit/core/router/router.gr.dart';
import 'package:poc_autoroute_cubit/counter/counter_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
        onPressed: () => AutoRouter.of(context).popAndPushAll(
          [
            CounterPresentationRoute(),
            CounterRoute(title: 'hgsdhdhs', counterCubit: CounterCubit()),
          ],
        ),
        child: const Text('Contador'),
      ),
    );
  }
}
