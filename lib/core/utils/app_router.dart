import 'package:bookly_app/Features/Splash/data/presentation/Home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/Splash/data/presentation/Home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/Splash/data/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
static const kBookDetailsview = '/bookDetailsView';
  static const kHomeview = '/homeView';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),

      GoRoute(
        path: kHomeview,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),

       GoRoute(
        path: kBookDetailsview,
        builder: (BuildContext context, GoRouterState state) {
          return const BookDetailsView();
        },
      ),
    ],
  );
}
