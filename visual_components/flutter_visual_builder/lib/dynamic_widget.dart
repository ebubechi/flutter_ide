import 'package:flutter/material.dart';
import 'package:flutter_visual_builder/components/visual_components.dart';


// Representation of a widget which can be moved around the screen
class DynamicWidget {

  DynamicWidget(this.widget, this.sourceCode, {Widget feedback}) : this.feedback = feedback ?? widget;

  DynamicWidget.empty(): widget = null, sourceCode = null, feedback = null;
  // The widget which should be moved around
  final Widget widget;

  // The source code of this widget
  final String sourceCode;

  /// The representation of the widget while being dragged around.
  ///
  /// Useful when widgets would normally expand to infinity
  final Widget feedback;
}

DynamicWidget testWidget = DynamicWidget(
    Container(
      color: Colors.green,
      width: 50,
      height: 100,
    ),
    'Container(color: Colors.green,width: 50,height: 100,)');

DynamicWidget testWidget2 = DynamicWidget(
    VisualFloatingActionButton(
      onPressed: (){},
    ),
    'Container(color: Colors.green,width: 50,height: 100,)');

DynamicWidget testWidget3 = DynamicWidget(
    Icon(Icons.add),
    'Container(color: Colors.green,width: 50,height: 100,)');


