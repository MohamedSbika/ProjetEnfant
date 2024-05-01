import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CountryListPage extends StatefulWidget {
  @override
  _CountryListPageState createState() => _CountryListPageState();
}

class _CountryListPageState extends State<CountryListPage> {
  List<dynamic> countries = [];
  int selectedCountryIndex = 0; // Déclaration de selectedCountryIndex
  bool isLoading = true;
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    fetchCountries();
  }

  Future<void> fetchCountries() async {
    final response = await http.get(Uri.parse('https://restcountries.com/v3.1/all'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);

      setState(() {
        countries = data;
        isLoading = false; // Marquer le chargement comme terminé
      });
    } else {
      // Gérer les erreurs de réponse HTTP
      print('Erreur lors de la récupération des pays: ${response.statusCode}');
      print('Corps de la réponse: ${response.body}');
      setState(() {
        errorMessage = 'Erreur lors de la récupération des pays: ${response.statusCode}';
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Center(
          child: Text(
            "liste des pays avec drapeaux",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator()) // Afficher un indicateur de chargement si les données sont en cours de récupération
          : errorMessage != null
          ? Center(child: Text(errorMessage!)) // Afficher un message d'erreur en cas de problème de chargement
          : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<int>(
              value: selectedCountryIndex,
              onChanged: (int? newIndex) {
                setState(() {
                  selectedCountryIndex = newIndex!;
                });
              },
              items: countries.asMap().entries.map<DropdownMenuItem<int>>((entry) {
                final int index = entry.key;
                final dynamic country = entry.value;
                return DropdownMenuItem<int>(
                  value: index,
                  child: Text(country['name']['common']),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            selectedCountryIndex != null && selectedCountryIndex < countries.length
                ? Image.network(
              countries[selectedCountryIndex]['flags']['png'],
              width: 100,
              height: 100,
            )
                : SizedBox(), // Affichage du drapeau sélectionné
          ],
        ),
      ),
    );
  }
}


