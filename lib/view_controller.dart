import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inherited_widjet_test/main.dart';
import 'package:inherited_widjet_test/model_binding.dart';

class ViewController extends StatelessWidget {
  const ViewController({Key? key, required this.updateModel}) : super(key: key);
  final Function updateModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          updateModel(
            MyModel(value: ModelBinding.of(context).model.value + 1),
          );
        },
        child: Text(
          'Hello World ${ModelBinding.of(context).model.value}',
        ),
      ),
    );
  }
}
