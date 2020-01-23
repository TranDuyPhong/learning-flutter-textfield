import 'package:flutter/material.dart';

import 'loginPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
    @override 
    Widget build(BuildContext buildContext) {
        return new MaterialApp(
            title: 'My App',
            home: new LoginPage(),
        );
    }
}