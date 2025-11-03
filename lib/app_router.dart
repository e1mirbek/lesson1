import 'package:go_router/go_router.dart';
import 'package:lesson1/screens/first_page.dart';
import 'package:lesson1/screens/second_page.dart';
import 'package:lesson1/screens/third_page.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const FirstPage()),
    GoRoute(path: '/second', builder: (context, state) => const SecondPage()),
    GoRoute(path: '/third', builder: (context, state) => const ThirdPage()),
  ],
);
