import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:iconsax/iconsax.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
// ignore: unused_import
import 'package:template/main.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:template/others/constructeur.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable, no_leading_underscores_for_local_identifiers
    PersistentTabController _controller =
        PersistentTabController(initialIndex: 0);

    Constructeur constructeur = Constructeur();
    List<Widget> matchFixtures = [
      constructeur.buildMatchFixtures(context),
      constructeur.buildMatchFixtures(context),
      constructeur.buildMatchFixtures(context),
      constructeur.buildMatchFixtures(context)
    ];
    return Scaffold(
      backgroundColor: const Color(0xffF0F0F0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.go('/profile');
                        },
                        child: const SizedBox(
                          width: 55,
                          height: 55,
                          child: CircleAvatar(
                              backgroundImage: NetworkImage(
                            'https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg',
                          )),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Ryan Firmamansya',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            DateFormat('E, dd MMMM yyyy')
                                .format(DateTime.now())
                                .toString(),
                            style: const TextStyle(
                                fontSize: 13, fontWeight: FontWeight.normal),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: const Icon(
                          IconsaxPlusLinear.search_normal_1,
                          size: 30,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 55,
                        height: 55,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          IconsaxPlusLinear.notification,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 2.5,
              child: DefaultTabController(
                length: 4,
                child: Column(
                  children: <Widget>[
                    ButtonsTabBar(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      backgroundColor: const Color(0xff3B2794),
                      unselectedBackgroundColor: Colors.grey[300],
                      unselectedLabelStyle:
                          const TextStyle(color: Color(0xff3B2794)),
                      labelStyle: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      tabs: [
                        const Tab(
                          text: "Yesterday",
                        ),
                        const Tab(
                          text: "Today",
                        ),
                        const Tab(
                          text: "Tomorrow",
                        ),
                        Tab(
                          text:
                              // ignore: unnecessary_string_interpolations
                              '${DateFormat('E, dd MMMM').format(DateTime.now().add(const Duration(days: 2)))}',
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          const Center(
                            child: Icon(Icons.directions_car),
                          ),
                          //Today
                          Column(
                            children: [
                              constructeur.buildMatchLive(context),
                              const SizedBox(
                                height: 10,
                              ),
                              constructeur.buildMatchLive(context),
                              const SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  constructeur.buildLeague(
                                      context, matchFixtures),
                                ],
                              ),
                              constructeur.buildTrendingNews(context),
                              constructeur.getLatestNews(),
                            ],
                          ),
                          const Center(
                            child: Icon(Icons.directions_bike),
                          ),
                          const Center(
                            child: Icon(Icons.directions_car),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
