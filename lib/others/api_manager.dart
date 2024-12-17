import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiManager {
  static const _apiUrl = 'https://v3.football.api-sports.io';
  static const _keyApi = '4a99b68a164d155ca2cfae5801dc5415';

  static const header = {
    'x-rapidapi-key': _keyApi,
    'x-rapidapi-host': 'v3.football.api-sports.io'
  };

  // Get live fixtures
  static Future<Map<String, dynamic>> getResponseFixture() async {
    try {
      final response = await http.get(
        Uri.parse("$_apiUrl/fixtures?live=all&season=${2024}"),
        headers: header,
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load live fixtures');
      }
    } catch (e) {
      throw Exception('Failed to load live fixtures: $e');
    }
  }

  // Get past fixtures
  static Future<Map<String, dynamic>> getResponseFixturePast(
      String date, int season) async {
    try {
      final response = await http.get(
        Uri.parse("$_apiUrl/fixtures?date=$date&season=$season"),
        headers: header,
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load past fixtures');
      }
    } catch (e) {
      throw Exception('Failed to load past fixtures: $e');
    }
  }

  // Get upcoming fixtures
  static Future<Map<String, dynamic>> getResponseFixtureNext() async {
    try {
      final response = await http.get(
        Uri.parse("$_apiUrl/fixtures?date=2024-12-14&season=${2024}"),
        headers: header,
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load upcoming fixtures');
      }
    } catch (e) {
      throw Exception('Failed to load upcoming fixtures: $e');
    }
  }

  // Get standings
  static Future<Map<String, dynamic>> getResponseFixtureClassement() async {
    try {
      final response = await http.get(
        Uri.parse("$_apiUrl/standings?league=${300}&season=${2024}"),
        headers: header,
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load standings');
      }
    } catch (e) {
      throw Exception('Failed to load standings: $e');
    }
  }
}
