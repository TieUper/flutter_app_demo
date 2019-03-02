import 'package:flutter_app_demo/model/product.dart';
import 'package:flutter_app_demo/model/products_repository.dart';
import 'package:scoped_model/scoped_model.dart';

class AppStateModel extends Model {
  List<Product> _availableProducts;

  Category _selectedCategory = Category.all;

  List<Product> getProducts() {
    if (_availableProducts == null) return List<Product>();

    if (_selectedCategory == Category.all) {
      return List.from(_availableProducts);
    } else {
      return _availableProducts
          .where((p) => p.category == _selectedCategory)
          .toList();
    }
  }

  void loadProducts(){
    _availableProducts = ProductsRepository.loadProducts(Category.all);
  }
}
