import 'dart:html';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

import 'package:muses/provider.dart';
import 'package:muses/locator.dart';
import 'package:muses/routing/names.dart';
import 'package:muses/view/login/view.dart';
import 'package:muses/view/home/view.dart';

void main() {
  ui.platformViewRegistry.registerViewFactory('markdown-view', (int viewId) => IFrameElement()
    ..width = '640'
    ..height = '360'
    ..src = 'https://www.youtube.com/embed/IyFZznAk69U'
    ..style.border = 'none'
  );
  counterProvider();
  setupLocator();
  runApp(Application());
}

class Application extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: LoginPageRoute,
      theme: ThemeData.dark(),
      routes: {
        HomePageRoute: (context) => HomePage(),
        LoginPageRoute: (context) => LoginPage(),
      },
    );
  }
}
