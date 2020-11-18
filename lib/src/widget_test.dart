import 'package:flutter/material.dart';

class WidgetTestLabel extends StatefulWidget {
  final String event;
  final int year;

  const WidgetTestLabel({Key key, this.event, this.year}) : super(key: key);

  @override
  _WidgetTestLabelState createState() => _WidgetTestLabelState();
}

class _WidgetTestLabelState extends State<WidgetTestLabel> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(width: 2, color: Colors.white,),
      title: Text(widget.event, style: TextStyle(fontSize: 18)),
      subtitle: Text('${widget.year}'),
    );
  }
}