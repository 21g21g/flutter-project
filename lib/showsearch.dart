import 'package:flutter/material.dart';

class CostomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "Apple",
    "Banana",
    "Mango",
    "Pear",
    "Watermelons",
    "Blueberries",
    "Pineapples",
    "Strawberries",
    "Pineapples",
    "dfgrt",
    "werqsafrt",
    "ghyui",
    "dgfhjkl",
    "rtyuio",
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          color: Colors.red,
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear)),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        color: Colors.black12,
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> search = [];
    for (var ge in searchTerms) {
      if (ge.toLowerCase().contains(query.toLowerCase())) {
        search.add(ge);
      }
    }
    return ListView.builder(
      itemCount: search.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(search[index]),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> search = [];
    for (var ge in searchTerms) {
      if (ge.toLowerCase().contains(query.toLowerCase())) {
        search.add(ge);
      }
    }
    return ListView.builder(
      itemCount: search.length,
      itemBuilder: (context, index) {
        var result = search[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
