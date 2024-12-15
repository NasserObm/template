import 'package:flutter/material.dart';
import 'package:template/others/api_manager.dart';
/*
class FixturesScreen extends StatefulWidget {
  const FixturesScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FixturesScreenState createState() => _FixturesScreenState();
}

class _FixturesScreenState extends State<FixturesScreen> {
  late Future<Map<String, dynamic>> _fixturesData;

  @override
  void initState() {
    super.initState();
    _fixturesData =
        ApiManager.getResponseFixture(); // Récupérer la réponse de l'API
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fixtures'),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _fixturesData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (snapshot.hasData) {
            // Imprimer la réponse JSON dans la console
            // ignore: avoid_print
            print('API Response: ${snapshot.data}');
            // Afficher la réponse de façon basique dans l'interface
            return const Center(
                child: Text('Réponse imprimée dans la console.'));
          } else {
            return const Center(child: Text("No data available"));
          }
        },
      ),
    );
  }
}
*/
