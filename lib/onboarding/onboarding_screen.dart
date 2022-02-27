import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:poc_autoroute_cubit/core/router/router.gr.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text('Bem vindo ao app XPTO.'),
            ),
          ),
          TextButton(
            onPressed: () {
              AutoRouter.of(context).pushNamed('login');
              // AutoRouter.of(context).replaceAll(
              //   [
              //     CounterPresentationRoute(),
              //     CounterRoute(title: 'hgsdhdhs'),
              //   ],
              // );
            },
            child: const Text('Contador'),
          ),
        ],
      ),
    );
  }
}
