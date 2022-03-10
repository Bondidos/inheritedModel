import 'package:flutter/cupertino.dart';

import 'main.dart';

class ModelBinding extends StatefulWidget {
  const ModelBinding({
    Key? key,
    required this.model,
    required Widget child,
  }) : super(key: key, child: child);

  final MyModel model;

  static ModelBinding of(BuildContext context) {
    final ModelBinding? result =
        context.dependOnInheritedWidgetOfExactType<ModelBinding>();
    assert(result != null, 'No ModelBinding found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ModelBinding oldWidget) {
    return model != oldWidget.model;
  }

  @override
  State<StatefulWidget> createState() => _ModelBindingState<StatefulWidget>()


}
class _ModelBindingState extends State<ModelBinding> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}