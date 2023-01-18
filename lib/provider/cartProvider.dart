import 'package:flutter/material.dart';

import '../Home/Components/Products/product_design.dart';

class MyCartProvider extends ChangeNotifier{
  List <ProductDesign> _myCartProductList = <ProductDesign>[
  
  ];
  List<ProductDesign> get getmyCartProductsList  {
    return _myCartProductList;
  }
  // void addProduct(ProductDesign product_obj){
  //   _myCartProductList.add(product_obj);
  // }
 void addProductToCart( ProductDesign product){
  product.isAddedToCart = true;
     _myCartProductList.add(product);
 }
  void removeProduct(ProductDesign product_obj) {
    _myCartProductList.remove(product_obj);

    notifyListeners();
  }
}