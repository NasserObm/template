import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template/screens/homepage.dart';
// ignore: unused_import
import 'package:template/screens/matches.dart';
import 'package:template/screens/matchplus.dart';
import 'package:template/screens/newspage.dart';
import 'package:template/screens/profile.dart';
import 'package:template/screens/searchinfo.dart';
import 'package:template/screens/welcome.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

void main() => runApp(const MyApp());

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    // Route pour la page de démarrage sans BottomNavigationBar
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const Welcome(),
    ),

    // ShellRoute avec BottomNavigationBar pour les autres pages
    ShellRoute(
      builder: (context, state, child) {
        return MainShell(child: child); // Affiche la BottomNavigationBar
      },
      routes: [
        GoRoute(
          path: '/profile',
          builder: (BuildContext context, GoRouterState state) =>
              const Profile(),
        ),
        GoRoute(
          path: '/news_page',
          builder: (BuildContext context, GoRouterState state) =>
              const Newspage(),
        ),
        GoRoute(
          path: '/home_page',
          builder: (BuildContext context, GoRouterState state) =>
              const Homepage(),
        ),
        GoRoute(
          path: '/matches',
          builder: (BuildContext context, GoRouterState state) =>
              const MatchplusPage(),
        ),
        GoRoute(
          path: '/search_info',
          builder: (BuildContext context, GoRouterState state) =>
              const Searchinfo(),
        ),
        GoRoute(
          path: '/match_plus',
          builder: (BuildContext context, GoRouterState state) =>
              const MatchplusPage(),
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainShell extends StatelessWidget {
  final Widget child;

  const MainShell({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child, // Affiche l'écran sélectionné
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _getCurrentIndex(context),
        onTap: (index) {
          switch (index) {
            case 0:
              context.go('/home_page');
              break;
            case 1:
              context.go('/news_page');
              break;
            case 2:
              context.go('/matches');
              break;
            case 3:
              context.go('/search_info');
              break;
            case 4:
              context.go('/profile');
              break;
          }
        },
        selectedItemColor:
            const Color(0xff3B2794), // Couleur des éléments sélectionnés
        unselectedItemColor:
            Colors.grey, // Couleur des éléments non sélectionnés
        items: [
          BottomNavigationBarItem(
            icon: _getIconForIndex(0, _getCurrentIndex(context)),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: _getIconForIndex(1, _getCurrentIndex(context)),
            label: "News",
          ),
          BottomNavigationBarItem(
            icon: _getIconForIndex(2, _getCurrentIndex(context)),
            label: "Matches",
          ),
          BottomNavigationBarItem(
            icon: _getIconForIndex(3, _getCurrentIndex(context)),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: _getIconForIndex(4, _getCurrentIndex(context)),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  int _getCurrentIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    if (location == '/profile') return 4;
    if (location == '/news_page') return 1;
    if (location == '/matches') return 2;
    if (location == '/search_info') return 3;
    return 0; // Par défaut sur "/home_page"
  }

  // Méthode pour retourner la bonne icône selon l'état
  Widget _getIconForIndex(int index, int currentIndex) {
    if (index == currentIndex) {
      // Icône en `IconsaxPlusBold` si sélectionnée
      switch (index) {
        case 0:
          return const Icon(IconsaxPlusBold.home_1);
        case 1:
          return const Icon(IconsaxPlusBold.document_copy);
        case 2:
          return const Icon(IconsaxPlusBold.cup);
        case 3:
          return const Icon(IconsaxPlusBold.search_normal_1);
        case 4:
          return const Icon(IconsaxPlusBold.user);
      }
    } else {
      // Icône en `IconsaxPlusLinear` si non sélectionnée
      switch (index) {
        case 0:
          return const Icon(IconsaxPlusLinear.home_1);
        case 1:
          return const Icon(IconsaxPlusLinear.document_copy);
        case 2:
          return const Icon(IconsaxPlusLinear.cup);
        case 3:
          return const Icon(IconsaxPlusLinear.search_normal_1);
        case 4:
          return const Icon(IconsaxPlusLinear.user);
      }
    }
    return const Icon(Icons.error); // Icône par défaut en cas de problème
  }
}
