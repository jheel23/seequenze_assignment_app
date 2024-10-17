import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seequenze_assignment_app/screens/details_screen.dart';
import 'package:seequenze_assignment_app/screens/login_screen.dart';
import 'package:seequenze_assignment_app/screens/main_tab_screen.dart';
import 'package:seequenze_assignment_app/screens/tabs/home_screen.dart';
import 'package:seequenze_assignment_app/screens/tabs/placeholder_tab.dart';

class AppRoutes {
  AppRoutes._();
  static AppRoutes instance = AppRoutes._();
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static const logInScreen = '/log-in';
  static const detailsScreen = '/details-screen';
  static const homeScreen = '/home-screen';
  final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/log-in',
    routes: [
      GoRoute(
        path: logInScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: detailsScreen,
        builder: (context, state) => const DetailsScreen(),
      ),
      StatefulShellRoute.indexedStack(
          builder: (context, state, navigationshell) =>
              MainTabScreen(navigationshell),
          branches: [
            StatefulShellBranch(routes: [
              GoRoute(
                name: homeScreen,
                path: '/home-screen',
                pageBuilder: (context, state) =>
                    const NoTransitionPage<void>(child: HomeScreen()),
              ),
            ]),
            StatefulShellBranch(routes: [
              GoRoute(
                name: '/placeholder-1',
                path: '/placeholder-1',
                pageBuilder: (context, state) =>
                    const NoTransitionPage<void>(child: PlaceholderTab()),
              ),
            ]),
            StatefulShellBranch(routes: [
              GoRoute(
                name: '/placeholder-2',
                path: '/placeholder-2',
                pageBuilder: (context, state) =>
                    const NoTransitionPage<void>(child: PlaceholderTab()),
              ),
            ]),
            StatefulShellBranch(routes: [
              GoRoute(
                name: '/placeholder-3',
                path: '/placeholder-3',
                pageBuilder: (context, state) =>
                    const NoTransitionPage<void>(child: PlaceholderTab()),
              ),
            ]),
            StatefulShellBranch(routes: [
              GoRoute(
                name: '/placeholder-4',
                path: '/placeholder-4',
                pageBuilder: (context, state) =>
                    const NoTransitionPage<void>(child: PlaceholderTab()),
              ),
            ]),
          ]),
    ],
  );
}
