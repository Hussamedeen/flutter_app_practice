import 'package:flutter/material.dart';

class MyIcons extends StatefulWidget {
  bool mini;
  var icon;
  double iconSize;
  var color;

  MyIcons(this.mini, this.icon, this.iconSize, this.color);

  @override
  State<StatefulWidget> createState() {
    return _MyIcons();
  }
}

class _MyIcons extends State<MyIcons> {
  void onPressedButton() {}

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FloatingActionButton(
      backgroundColor: widget.color,
      mini: widget.mini,
      onPressed: onPressedButton,
      child: Icon(
        widget.icon,
        size: widget.iconSize,
        color: Color(0xFF4268D3),
      ),
    ));
  }
}
