import 'package:flutter/material.dart';
import 'package:flutter_app_demo/model/product.dart';
import 'package:intl/intl.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_app_demo/model/app_state_model.dart';

class ProductCard extends StatelessWidget {
  final double imageAspectRatio;
  final Product product;

  static final kTextBoxHeight = 65.0;

  const ProductCard({Key key, this.imageAspectRatio: 33 / 49, this.product})
      : assert(imageAspectRatio == null || imageAspectRatio > 0);

  @override
  Widget build(BuildContext context) {
    final NumberFormat formatter = NumberFormat.simpleCurrency(
        decimalDigits: 0, locale: Localizations.localeOf(context).toString());
    final ThemeData theme = Theme.of(context);

    Image.asset(
      product.assetName,
      package: product.assetPackage,
      fit: BoxFit.cover,
    );

    return ScopedModelDescendant<AppStateModel>(
      builder: (BuildContext context, Widget child, AppStateModel model) {

      },
      child: Stack(
        children: <Widget>[
          AspectRatio(aspectRatio: imageAspectRatio,

          )
        ],
      ),
    );
  }
}
