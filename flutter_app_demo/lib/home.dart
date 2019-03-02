import 'package:flutter/material.dart';
import 'package:flutter_app_demo/model/product.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_app_demo/model/app_state_model.dart';

class ProductPage extends StatelessWidget {

  final Category category;

  const ProductPage({Key key, this.category : Category.all}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<AppStateModel> (
      builder: (context,child, model){
        return A
      },
    );
  }
}
