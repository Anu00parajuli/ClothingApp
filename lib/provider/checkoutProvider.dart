import 'package:clothing_app/Home/Components/Products/product_design.dart';
import 'package:flutter/material.dart';

class MyCheckoutProvider extends ChangeNotifier{
  List <ProductDesign> _myCheckoutProductsList = <ProductDesign> [

  ];
  List<ProductDesign> get getmyCheckoutProductsList  {
    return _myCheckoutProductsList;
  }
  // void addProduct(ProductDesign product_obj){
  //   _myCartProductList.add(product_obj);
  // }
 void addProductToCheckout( ProductDesign product){
  product.isSelectedToCheckout = true;
     _myCheckoutProductsList.add(product);
 }
  void removeProduct(ProductDesign product_obj) {
    _myCheckoutProductsList.remove(product_obj);

    notifyListeners();
  }


  double totalPrice(){
    double totalPrice = 0;
    for (var product in _myCheckoutProductsList) {
      totalPrice = totalPrice + product.price;
    }
    return totalPrice;
  }


}
