import 'package:go_router/go_router.dart';
import 'package:lesson1/lessons/lesson01.dart';
import 'package:lesson1/lessons/lesson02.dart';
import 'package:lesson1/lessons/lesson03.dart';
import 'package:lesson1/lessons/lesson04.dart';
import 'package:lesson1/lessons/lesson05.dart';
import 'package:lesson1/lessons/lesson06.dart';
import 'package:lesson1/lessons/lesson07.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const Lesson03()),
    GoRoute(path: '/second', builder: (context, state) => const Lesson06()),
    GoRoute(path: '/third', builder: (context, state) => const Lesson07()),
    GoRoute(path: '/fourth', builder: (context, state) => const Lesson05()),
  ],
);


