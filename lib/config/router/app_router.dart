import 'package:flutter/material.dart';
import 'package:forms_app/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/cubits',
      builder: (BuildContext context, GoRouterState state) {
        return CubitCounterScreen();
      },
    ),
    GoRoute(
      path: '/bloc',
      builder: (BuildContext context, GoRouterState state) {
        return BlocCounterScreen();
      },
    ),
    GoRoute(
      path: '/new-user',
      builder: (BuildContext context, GoRouterState state) {
        return RegisterScreen();
      },
    ),
  ],
);
