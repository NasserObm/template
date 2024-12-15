class GetFixture {
  Fixture fixture;
  League league;
  Teams teams;
  Goal goals;
  Score score;

  GetFixture(
      {required this.fixture,
      required this.league,
      required this.teams,
      required this.goals,
      required this.score});
  factory GetFixture.fromJson(Map<String, dynamic> json) {
    return GetFixture(
      fixture: Fixture.fromJson(json['fixture']),
      league: League.fromJson(json['league']),
      teams: Teams.fromJson(json['teams']),
      goals: Goal.fromJson(json['goals']),
      score: Score.fromJson(json['score']),
    );
  }
}

class Period {
  int first;
  int second;
  Period({required this.first, required this.second});
  factory Period.fromJson(Map<String, dynamic> json) {
    return Period(
      first: json['first'],
      second: json['second'],
    );
  }
}

class Status {
  String? long;
  String? short;
  String? elapsed;
  int? extra;
  Status({required this.long, required this.short, required this.elapsed});
  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(
      long: json['long'],
      short: json['short'],
      elapsed: json['elapsed'],
    );
  }
}

class Venue {
  int id;
  String name;
  String city;
  Venue({required this.id, required this.name, required this.city});
  factory Venue.fromJson(Map<String, dynamic> json) {
    return Venue(
      id: json['id'],
      name: json['name'],
      city: json['city'],
    );
  }
}

class League {
  int id;
  String name;
  String country;
  String logo;
  String flag;
  int season;
  String round;
  League(
      {required this.id,
      required this.name,
      required this.country,
      required this.logo,
      required this.flag,
      required this.season,
      required this.round});
  factory League.fromJson(Map<String, dynamic> json) {
    return League(
      id: json['id'],
      name: json['name'],
      country: json['country'],
      logo: json['logo'],
      flag: json['flag'],
      season: json['season'],
      round: json['round'],
    );
  }
}

class Team {
  int id;
  String name;
  String logo;
  bool? winner;
  Team(
      {required this.id,
      required this.name,
      required this.logo,
      required this.winner});
  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      id: json['id'],
      name: json['name'],
      logo: json['logo'],
      winner: json['winner'],
    );
  }
}

class Teams {
  Team home;
  Team away;
  Teams({required this.home, required this.away});
  factory Teams.fromJson(Map<String, dynamic> json) {
    return Teams(
      home: Team.fromJson(json['home']),
      away: Team.fromJson(json['away']),
    );
  }
}

class Goal {
  int home;
  int away;
  Goal({required this.home, required this.away});
  factory Goal.fromJson(Map<String, dynamic> json) {
    return Goal(
      home: json['home'],
      away: json['away'],
    );
  }
}

class Score {
  Goal halfTime;
  Goal? fullTime;
  Goal? extraTime;
  Goal? penalty;
  Score(
      {required this.halfTime,
      required this.fullTime,
      required this.extraTime,
      required this.penalty});
  factory Score.fromJson(Map<String, dynamic> json) {
    return Score(
      halfTime: Goal.fromJson(json['halfTime']),
      fullTime:
          json['fullTime'] != null ? Goal.fromJson(json['fullTime']) : null,
      extraTime:
          json['extraTime'] != null ? Goal.fromJson(json['extraTime']) : null,
      penalty: json['penalty'] != null ? Goal.fromJson(json['penalty']) : null,
    );
  }
}

class Fixture {
  int id;
  String referee;
  String timezone;
  String date;
  int timestamp;
  Venue venue;
  Status status;
  Period? period;
  Fixture({
    required this.id,
    required this.referee,
    required this.timezone,
    required this.date,
    required this.timestamp,
    required this.venue,
    required this.status,
  });
  factory Fixture.fromJson(Map<String, dynamic> json) {
    return Fixture(
      id: json['id'],
      referee: json['referee'],
      timezone: json['timezone'],
      date: json['date'],
      timestamp: json['timestamp'],
      venue: Venue.fromJson(json['venue']),
      status: Status.fromJson(json['status']),
    );
  }
}
