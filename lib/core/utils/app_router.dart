
import 'package:bookly_app/Features/Home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
static const kBookDetailsview = '/bookDetailsView';
  static const kHomeview = '/homeView';
    static const kSearchView = '/searchView';
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

          GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );
}
