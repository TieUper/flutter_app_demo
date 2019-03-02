import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  var counter = Counter();

  Timer.periodic(const Duration(seconds: 5), (timer) {
    counter.increment();
  });

  runApp(ScopedModel<Counter>(
    model: counter,
    child: App(),
  ));
}

class Counter extends Model {
  int value = 0;

  void increment() {
    value += 1;
    notifyListeners();
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppWidget(),
    );
  }
}

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            ScopedModelDescendant<Counter>(
              builder: (context, child, counter) {
                return Text(
                  '${counter.value}',
                  style: Theme.of(context).textTheme.display1,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ScopedModel.of<Counter>(context).increment(),
        child: Icon(Icons.add),
        tooltip: 'Counter Button',
      ),
    );
  }
}
