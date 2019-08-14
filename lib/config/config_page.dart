import 'package:devfest/config/index.dart';
import 'package:devfest/utils/devfest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfigPage extends StatefulWidget {
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  ConfigBloc _configBloc;

  @override
  void initState() {
    super.initState();
    _setupApp();
  }

  _setupApp() {
    _configBloc = ConfigBloc();
    _configBloc.darkModeOn =
        Devfest.prefs.getBool(Devfest.darkModePref) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      builder: (context) => _configBloc,
      child: BlocBuilder<ConfigBloc, ConfigState>(
        builder: (context, state) {
          return MaterialApp(
            title: "Google Devfest",
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                //* Custom Google Font
                fontFamily: Devfest.google_sans_family,
                primarySwatch: Colors.red,
                primaryColor:
                    _configBloc.darkModeOn ? Colors.black : Colors.white,
                disabledColor: Colors.grey,
                cardColor: _configBloc.darkModeOn ? Colors.black : Colors.white,
                canvasColor:
                    _configBloc.darkModeOn ? Colors.black : Colors.grey[50],
                brightness:
                    _configBloc.darkModeOn ? Brightness.dark : Brightness.light,
                buttonTheme: Theme.of(context).buttonTheme.copyWith(
                    colorScheme: _configBloc.darkModeOn
                        ? ColorScheme.dark()
                        : ColorScheme.light()),
                appBarTheme: AppBarTheme(
                  elevation: 0.0,
                )),
            home: Scaffold(
              appBar: AppBar(),
              body: Container(),
            ),
          );
        },
      ),
    );
  }
}
