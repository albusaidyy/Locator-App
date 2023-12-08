import 'package:flutter/material.dart';
import 'package:locator/bottom_tab_bar/bottom_tab_bar.dart';
import 'package:locator/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'SplineSans',
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const BottomBar(),
    );
  }
}
