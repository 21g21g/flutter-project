import 'package:flutter/material.dart';

class VsibilityWidget extends StatefulWidget {
  @override
  VsibilityWidgetState createState() => VsibilityWidgetState();
}

class VsibilityWidgetState extends State<VsibilityWidget> {
  bool _isVisible = false;
  void ShowWidget() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Visibility(
        visible: _isVisible,
        child: Container(),
      ),
    );
  }
}
