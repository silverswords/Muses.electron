import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: HtmlElementView(viewType: 'markdown-view'),
    );
  }
}