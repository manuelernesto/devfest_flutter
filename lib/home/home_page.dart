import 'package:devfest/home/index.dart';
import 'package:devfest/universal/dev_scaffold.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "/home";
  var _homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      title: "Home",
      body: HomeScreen(
        homeBloc: _homeBloc,
      ),
    );
  }
}
