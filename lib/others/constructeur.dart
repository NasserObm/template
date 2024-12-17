// ignore: unused_import
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class Constructeur {
  Constructeur();
  Widget buildMatchLive(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 3,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff3B2794), Color.fromARGB(255, 218, 212, 245)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(children: [
        const SizedBox(height: 10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.play_arrow,
              size: 30,
              color: Color(0xffffffff),
            ),
            Text(
              'Live Now',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 7, right: 7, bottom: 4),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 3.7,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Team 1 vs Team2(TypeMatch)",
                      style: TextStyle(
                        color: Color(0xff3B2794),
                        fontSize: 16,
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 30,
                      decoration: const BoxDecoration(
                          color: Color(0xffF2F1F8),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'elapsed',
                          style: TextStyle(color: Color(0xff3B2794)),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/fcb.png',
                            height: 50, width: 50),
                        const Text(
                          'NameClub1',
                          style:
                              TextStyle(color: Color(0xff3B2794), fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 16,
                    ),
                    Column(children: [
                      const Center(
                        child: Text(
                          'ScoreHome - ScoreAway',
                          style:
                              TextStyle(color: Color(0xff3B2794), fontSize: 20),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: 30,
                        decoration: const BoxDecoration(
                            color: Color(0xffF2F1F8),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Center(
                            child: Text(
                              'period',
                              style: TextStyle(color: Color(0xff3B2794)),
                            ),
                          ),
                        ),
                      )
                    ]),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/fcb.png',
                          width: 50,
                          height: 50,
                        ),
                        const Text(
                          'NameClub1',
                          style:
                              TextStyle(color: Color(0xff3B2794), fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 28,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff3B2794),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        child: const Text(
                          'Watch live',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }

  Widget buildMatchFixtures(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Container(
        padding: const EdgeInsets.only(top: 20),
        height: MediaQuery.of(context).size.height / 8,
        decoration: const BoxDecoration(
            color: Color(0xffF5F4F9),
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/pl.jpg',
                ),
                fit: BoxFit.contain,
                colorFilter:
                    ColorFilter.mode(Colors.white60, BlendMode.modulate)),
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset('assets/images/fcb.png', height: 50, width: 50),
                const Text(
                  'NameClub1',
                  style: TextStyle(color: Color(0xff3B2794), fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 16,
            ),
            Column(children: [
              const Center(
                child: Text(
                  'Time',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3.5,
                height: 30,
                decoration: const BoxDecoration(
                    color: Color(0xffF2F1F8),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(IconsaxPlusBold.notification,
                            color: Color(0xff3B2794)),
                        Text(
                          'notification',
                          style: TextStyle(color: Color(0xff3B2794)),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ]),
            Column(
              children: [
                Image.asset(
                  'assets/images/fcb.png',
                  width: 50,
                  height: 50,
                ),
                const Text(
                  'NameClub1',
                  style: TextStyle(color: Color(0xff3B2794), fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLeague(BuildContext context, List<Widget> matchFixtures) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        width: double.infinity,
        height: 500,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Text(
                    'NameLeague',
                    style: TextStyle(
                      color: Color(0xff3B2794),
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    color: Color(0xff3B2794),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: matchFixtures.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: matchFixtures[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNewsItem(
      String title, String description, String timeAgo, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 6,
              offset: const Offset(0, 2), // Ombre légère
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image à gauche
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: Image.network(
                imageUrl,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            // Détails à droite
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Sous-titre : "Match highlights"
                    const Text(
                      'Match highlights',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 4),
                    // Titre de l'actualité
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xff3B2794),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    // Description de l'actualité
                    Text(
                      description,
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 13,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 6),
                    // Temps écoulé
                    Text(
                      timeAgo,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
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

  Widget buildTrendingNews(BuildContext context) {
    final List<Map<String, String>> trendingNews = [
      {
        "title": "North London Derby: Arsenal Triumphs Over Tottenham",
        "description":
            "Arsenal emerged victorious in an epic match against Tottenham.",
        "timeAgo": "45 Minutes Ago",
        "imageUrl": "https://via.placeholder.com/100" // Exemple d'image
      },
      {
        "title": "City Reigns Supreme in the Champions League",
        "description":
            "Manchester City dominated their rivals with a stunning performance.",
        "timeAgo": "1 Hour Ago",
        "imageUrl": "https://via.placeholder.com/100"
      },
      {
        "title": "Kylian Mbappé Shines Again",
        "description": "Mbappé scored a brace to secure victory for PSG.",
        "timeAgo": "2 Hours Ago",
        "imageUrl": "https://via.placeholder.com/100"
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        width: double.infinity,
        height: 500,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            // En-tête
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Text(
                    'Trending News',
                    style: TextStyle(
                      color: Color(0xff3B2794),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    color: Color(0xff3B2794),
                  ),
                ],
              ),
            ),
            // Liste des actualités avec ListView.builder
            Expanded(
              child: ListView.builder(
                itemCount: trendingNews.length,
                itemBuilder: (context, index) {
                  final news = trendingNews[index];
                  return buildNewsItem(
                    news['title']!,
                    news['description']!,
                    news['timeAgo']!,
                    news['imageUrl']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getLatestNews() {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Row : Latest News + See All
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Latest News",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3B2794),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "See all",
                  style: TextStyle(color: Color(0xff3B2794), fontSize: 24),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // 2. Ligne Séparatrice
          Container(
            width: double.infinity,
            height: 0.3,
            color: Colors.grey[300],
          ),
          const SizedBox(height: 8),
          // 3. Image avec Padding
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                height: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://assets.goal.com/images/v3/bltc0c572ccecacdcd4/GOAL%20-%20Blank%20WEB%20-%20Facebook%20-%202024-12-16T093836.768.png?auto=webp&format=pjpg&width=1080&quality=60"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(7))),
              ),
            ),
          ),
          const SizedBox(height: 12),
          // 4. Liste d'icônes avec statistiques
          const Row(
            children: [
              Icon(IconsaxPlusLinear.heart, color: Colors.grey, size: 20),
              SizedBox(width: 4),
              Text("32"),
              SizedBox(width: 16),
              Icon(IconsaxPlusLinear.message, color: Colors.grey, size: 20),
              SizedBox(width: 4),
              Text("14"),
              SizedBox(width: 16),
              Icon(IconsaxPlusLinear.share, color: Colors.grey, size: 20),
              SizedBox(width: 4),
              Text("11"),
            ],
          ),
          const SizedBox(height: 8),
          // 5. Row : Match Highlights + Time
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Match Highlights",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              Text(
                "45 Minutes Ago",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // 6. Texte Principal (News Headline)
          const Text(
            "Bayern Munich Defeats Dortmund in a Classic Bundesliga Clash",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xff3B2794),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle headerTextStyle =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
  // En-tête du tableau
  Widget buildTableHeader() {
    return Container(
      color: Colors.grey.shade200,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: [
          Expanded(flex: 3, child: Text("# Team", style: headerTextStyle)),
          Expanded(child: Text("Point", style: headerTextStyle)),
          Expanded(child: Text("Won", style: headerTextStyle)),
          Expanded(child: Text("Lose", style: headerTextStyle)),
          Expanded(child: Text("Draw", style: headerTextStyle)),
        ],
      ),
    );
  }

  TextStyle rowTextStyle = const TextStyle(fontSize: 14);
  // Ligne d'équipe
  Widget buildTeamRow(
      int rank, String team, int points, int won, int lose, int draw) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: [
          Expanded(flex: 3, child: Text("$rank. $team", style: rowTextStyle)),
          Expanded(child: Text("$points", style: rowTextStyle)),
          Expanded(child: Text("$won", style: rowTextStyle)),
          Expanded(child: Text("$lose", style: rowTextStyle)),
          Expanded(child: Text("$draw", style: rowTextStyle)),
        ],
      ),
    );
  }
}
