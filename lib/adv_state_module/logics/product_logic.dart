import 'package:flutter/material.dart';
import 'package:flutter_s2_adv/adv_state_module/models/product_model.dart';

class ProductLogic extends ChangeNotifier {
  final List<ProductModel> _favoriteList = [];
  List<ProductModel> get favoriteList => _favoriteList;

  final List<ProductModel> _selectList = [];
  List<ProductModel> get selectList => _selectList;

  final List<ProductModel> _productList = productList;
  List<ProductModel> get product_List => _productList;
  void addToFavorite(ProductModel item) {
    _favoriteList.add(item);
    notifyListeners();
  }

  void removeFromFavorite(ProductModel item) {
    _favoriteList.remove(item);
    notifyListeners();
  }

  bool isFavorite(ProductModel item) {
    return _favoriteList.contains(item);
  }

  void selectAllProduct(ProductModel item) {
      for (var all in _productList) {
      _selectList.add(all);
    }
    notifyListeners();
  }

  void removeAllProduct(ProductModel item) {
      for (var all in _productList) {
      _selectList.remove(all);
    }
    notifyListeners();
  }

  void selectProduct(ProductModel item) {
  
    _selectList.add(item);
    notifyListeners();
  }

  void removeSelectProduct(ProductModel item) {
    _selectList.remove(item);
    notifyListeners();
  }

  bool isSelect(ProductModel item) {
    return _selectList.contains(item);
  }
}
