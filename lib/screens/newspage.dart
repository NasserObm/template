import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:intl/intl.dart';
import 'package:template/others/constructeur.dart';

class Newspage extends StatefulWidget {
  const Newspage({super.key});

  @override
  State<Newspage> createState() => _NewspageState();
}

class _NewspageState extends State<Newspage> {
  @override
  Widget build(BuildContext context) {
    Constructeur constructeur = Constructeur();
    return Scaffold(
      backgroundColor: const Color(0xffF0F0F0),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        IconsaxPlusLinear.search_normal_1,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'Trending News',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.more_horiz,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              constructeur.getLatestNews(),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 2.5,
                child: DefaultTabController(
                  length: 5,
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
                        tabs: const [
                          Tab(
                            text: "For you",
                          ),
                          Tab(
                            text: "Lastet",
                          ),
                          Tab(
                            text: "Transfer",
                          ),
                          Tab(
                            text: "Matches",
                          ),
                          Tab(
                            text: "Leagues",
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: <Widget>[
                            Column(
                              children: [
                                constructeur.buildNewsItem(
                                    "title",
                                    "description",
                                    "timeAgo",
                                    "https://assets.goal.com/images/v3/bltc0c572ccecacdcd4/GOAL%20-%20Blank%20WEB%20-%20Facebook%20-%202024-12-16T093836.768.png?auto=webp&format=pjpg&width=1080&quality=60"),
                                constructeur.buildNewsItem(
                                    "title",
                                    "description",
                                    "timeAgo",
                                    "https://assets.goal.com/images/v3/bltc0c572ccecacdcd4/GOAL%20-%20Blank%20WEB%20-%20Facebook%20-%202024-12-16T093836.768.png?auto=webp&format=pjpg&width=1080&quality=60"),
                                constructeur.buildNewsItem(
                                    "title",
                                    "description",
                                    "timeAgo",
                                    "https://assets.goal.com/images/v3/bltc0c572ccecacdcd4/GOAL%20-%20Blank%20WEB%20-%20Facebook%20-%202024-12-16T093836.768.png?auto=webp&format=pjpg&width=1080&quality=60"),
                              ],
                            ),
                            Column(
                              children: [
                                constructeur.buildNewsItem(
                                    "title",
                                    "description",
                                    "timeAgo",
                                    "https://assets.goal.com/images/v3/bltc0c572ccecacdcd4/GOAL%20-%20Blank%20WEB%20-%20Facebook%20-%202024-12-16T093836.768.png?auto=webp&format=pjpg&width=1080&quality=60"),
                                constructeur.buildNewsItem(
                                    "title",
                                    "description",
                                    "timeAgo",
                                    "https://assets.goal.com/images/v3/bltc0c572ccecacdcd4/GOAL%20-%20Blank%20WEB%20-%20Facebook%20-%202024-12-16T093836.768.png?auto=webp&format=pjpg&width=1080&quality=60"),
                                constructeur.buildNewsItem(
                                    "title",
                                    "description",
                                    "timeAgo",
                                    "https://assets.goal.com/images/v3/bltc0c572ccecacdcd4/GOAL%20-%20Blank%20WEB%20-%20Facebook%20-%202024-12-16T093836.768.png?auto=webp&format=pjpg&width=1080&quality=60"),
                                constructeur.buildNewsItem(
                                    "title",
                                    "description",
                                    "timeAgo",
                                    "https://assets.goal.com/images/v3/bltc0c572ccecacdcd4/GOAL%20-%20Blank%20WEB%20-%20Facebook%20-%202024-12-16T093836.768.png?auto=webp&format=pjpg&width=1080&quality=60")
                              ],
                            ),
                            const Center(
                              child: Icon(Icons.directions_bike),
                            ),
                            const Center(
                              child: Icon(Icons.directions_car),
                            ),
                            const Center(
                              child: Icon(Icons.directions_car),
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
      ),
    );
  }
}
