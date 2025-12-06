import 'package:go_router/go_router.dart';
import 'package:lesson1/lessons/lesson05.dart';
import 'package:lesson1/lessons/lesson06.dart';
import 'package:lesson1/lessons/lesson07.dart';
import 'package:lesson1/lessons/lesson12.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const Lesson12()),
  ],
);


