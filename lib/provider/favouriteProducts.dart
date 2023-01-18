import 'package:clothing_app/Models/list_productsModel.dart';
import 'package:flutter/material.dart';

import '../Home/Components/Products/product_design.dart';

class MyFavProductsProvider extends ChangeNotifier{

  List <ProductDesign> _myFavProductsList = <ProductDesign>[
  
  ];

  List<ProductDesign> get getmyFavProductsList  {
    return _myFavProductsList;
  }

  void addProduct(ProductDesign product){
     var myListFiltered = _myFavProductsList.where((e) => e.title == product.title );
     if (myListFiltered.isEmpty){
   _myFavProductsList.add(product);

    notifyListeners();
     }
  }

  void addToCart(ProductDesign pro){
    var index = _myFavProductsList.indexOf(pro);
    var toAdd = _myFavProductsList[index];
    toAdd.isAddedToCart = true;
    _myFavProductsList[index]=toAdd;

    notifyListeners();

  }

  void removeProduct(ProductDesign product_obj) {
    _myFavProductsList.remove(product_obj);

    notifyListeners();
  }

}