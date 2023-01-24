import 'package:clothing_app/Home/Components/Products/product_design.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Home/Components/Products/product_descript.dart';
import '../provider/favouriteProducts.dart';

class MySearchDelegate extends SearchDelegate {
 List<ProductDesign> searchTerms = [];
  @override
  List<Widget>? buildActions(BuildContext context)
   {
    
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
          searchTerms= Provider.of<MyFavProductsProvider>(context,listen: false).fetchAllProductsFromFirebase;

    for (var cloth in searchTerms) {
      if (cloth.title.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(cloth.title);
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
      searchTerms= Provider.of<MyFavProductsProvider>(context,listen: false).fetchAllProductsFromFirebase;

    List<ProductDesign> matchQuery = [];
    for (var cloth in searchTerms) {
      if (cloth.title.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(cloth);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return GestureDetector(
          child: ListTile(
            title: Text(result.title),
          ),
          onTap: (){
           Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => ProductDescription(product: result),
    ),
  );
          },
        );
      },
    );
  } //buildSuggestions
}
