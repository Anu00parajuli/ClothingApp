import 'package:flutter/material.dart';

class MySearchDelegate extends SearchDelegate {
 List<String> searchTerms = ['Pant', 'Pure Kurtha' 'Wedding', 'Random' , 'Festive' , 'Levis' , 'Gucci' , 'Saree' , 'Hoodie' , 'Summer Collection' , 'Winter Collection' , 'Autumn Collection'];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.close),
      ),
      IconButton(onPressed: () {}, icon: const Icon(Icons.filter_list_alt)),
    ]; 
  } //buildActions

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  } //buildLeading

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var cloth in searchTerms) {
      if (cloth.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(cloth);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  } //buildResults

   @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var cloth in searchTerms) {
      if (cloth.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(cloth);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  } //buildSuggestions
}