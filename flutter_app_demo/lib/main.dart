import 'package:flutter/material.dart';
import 'package:flutter_app_demo/model/app_state_model.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  AppStateModel model = AppStateModel();

  model.loadProducts();

  runApp(
    ScopedModel<AppStateModel>(
      child: null,
      model: model,
    ),
  );
}
