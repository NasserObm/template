import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:template/others/constructeur.dart';

class MatchplusPage extends StatefulWidget {
  const MatchplusPage({super.key});

  @override
  State<MatchplusPage> createState() => _MatchplusPageState();
}

class _MatchplusPageState extends State<MatchplusPage> {
  final List<Map<String, dynamic>> teams = [
    {
      "rank": 1,
      "team": "Chelsea",
      "points": 40,
      "won": 13,
      "lose": 1,
      "draw": 1
    },
    {
      "rank": 2,
      "team": "Arsenal",
      "points": 38,
      "won": 12,
      "lose": 2,
      "draw": 2
    },
    {"rank": 3, "team": "MU", "points": 34, "won": 11, "lose": 3, "draw": 3},
    {
      "rank": 4,
      "team": "Tottenham",
      "points": 28,
      "won": 10,
      "lose": 5,
      "draw": 1
    },
    {
      "rank": 5,
      "team": "Liverpool",
      "points": 27,
      "won": 8,
      "lose": 5,
      "draw": 4
    },
    {"rank": 6, "team": "PSG", "points": 26, "won": 8, "lose": 6, "draw": 6},
    {
      "rank": 7,
      "team": "Newcastle",
      "points": 25,
      "won": 7,
      "lose": 8,
      "draw": 7
    },
    {"rank": 8, "team": "MC", "points": 24, "won": 7, "lose": 9, "draw": 8},
  ];
  @override
  Widget build(BuildContext context) {
    Constructeur constructeur = Constructeur();
    return Scaffold(
      backgroundColor: const Color(0xff3B2794),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: Color(0xff3F2D91),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Color(0xff3F2D91),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.download,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Color(0xff3F2D91),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xff3B2794),
                  image: DecorationImage(
                      image: AssetImage('assets/images/fcb.png'),
                      colorFilter:
                          ColorFilter.mode(Colors.grey, BlendMode.modulate))),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/fcb.png',
                            height: 50, width: 50),
                        const Text(
                          'NameClub1',
                          style: TextStyle(color: Colors.white, fontSize: 16),
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
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: 30,
                        decoration: const BoxDecoration(
                            color: Color(0xff3F2D91),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Center(
                            child: Text(
                              'period',
                              style: TextStyle(color: Colors.white),
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
                          'NameClub2',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: DefaultTabController(
                length: 6,
                child: Column(
                  children: <Widget>[
                    ButtonsTabBar(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      backgroundColor: const Color(0xff3B2794),
                      unselectedBackgroundColor: const Color(0xff3B2794),
                      unselectedLabelStyle: TextStyle(color: Colors.grey[600]),
                      labelStyle: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      tabs: [
                        const Tab(
                          text: "Details",
                        ),
                        const Tab(
                          text: "Standing",
                        ),
                        const Tab(
                          text: "News",
                        ),
                        const Tab(
                          text: "Season",
                        ),
                        const Tab(
                          text: "Statistiques",
                        ),
                        Tab(
                          text: DateFormat('E, dd MMMM').format(
                              DateTime.now().add(const Duration(days: 2))),
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          Container(
                            decoration:
                                const BoxDecoration(color: Color(0xffF0F0F0)),
                            child: const Center(
                              child: Icon(Icons.directions_car),
                            ),
                          ),
                          //Today
                          Container(
                            decoration:
                                const BoxDecoration(color: Color(0xfff0f0f0)),
                            child: Column(
                              children: [
                                constructeur.buildTableHeader(),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: teams.length,
                                    itemBuilder: (context, index) {
                                      final team = teams[index];
                                      return constructeur.buildTeamRow(
                                        team["rank"],
                                        team["team"],
                                        team["points"],
                                        team["won"],
                                        team["lose"],
                                        team["draw"],
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration:
                                const BoxDecoration(color: Color(0xfff0f0f0)),
                            child: const Center(
                              child: Icon(Icons.directions_car),
                            ),
                          ),
                          Container(
                            decoration:
                                const BoxDecoration(color: Color(0xfff0f0f0)),
                            child: const Center(
                              child: Icon(Icons.directions_car),
                            ),
                          ),
                          Container(
                            decoration:
                                const BoxDecoration(color: Color(0xfff0f0f0)),
                            child: const Center(
                              child: Icon(Icons.directions_car),
                            ),
                          ),
                          Container(
                            decoration:
                                const BoxDecoration(color: Color(0xfff0f0f0)),
                            child: const Center(
                              child: Icon(Icons.directions_car),
                            ),
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
