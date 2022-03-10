import 'package:flutter/material.dart';
import 'package:inherited_widjet_test/model_binding.dart';
import 'package:inherited_widjet_test/view_controller.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  MyModel currentModel = const MyModel();

  void updateModel(MyModel newModel) {
    if (newModel != currentModel) {
      setState(() {
        currentModel = newModel;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ModelBinding(
          model: currentModel,
          child: ViewController(updateModel: updateModel),
        ),
      ),
    );
  }
}

class MyModel {
  const MyModel({this.value = 0});

  final int value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    final MyModel otherModel = other as MyModel;
    return otherModel.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
