import 'package:flutter/material.dart';
import 'package:flutter_app_demo/model/product.dart';
import 'package:flutter_app_demo/product.dart';

class AsymmetricView extends StatelessWidget {

  final List<Product> products;

  const AsymmetricView({Key key, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.fromLTRB(0.0, 34.0, 16.0, 0.0),
    );
  }

  List<Container> _buildColumns(BuildContext context) {
    if(products == null || products.isEmpty){
      return const <Container>[];
    }

    return List.generate(products.length, (index) {
      double width = 0.59 * MediaQuery.of(context).size.width;
      Widget column;
      if(index % 2 == 0) {

      }
    });
  }
