import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/splash/presentation/views/splash_view.dart';
abstract class AppRouter{
  static const khomeview= '/homeView';
  static const kBookDetailsView= '/bookDetailsView';
  static const kSearchView= '/SearchView';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: ( context,  state) {
          return const Splashview();
        },
      ),
      GoRoute(
        path: khomeview,
        builder: ( context,  state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kBookDetailsView ,
        builder: ( context,  state) {
          return const BookDetailView();
        },
      ),
      GoRoute(
        path: kSearchView ,
        builder: ( context,  state) {
          return const SearchView();
        },
      ),
    ],
  );
}
