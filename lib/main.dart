import 'package:flutter/material.dart';
import './ui/router.dart';

import 'locator.dart';
import 'package:provider/provider.dart';
import './ui/shared/theme.dart';

void main() {
  setupLocator() ;
  runApp(MyApp()) ;
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      builder: (_) => ThemeChanger(),
      child: MaterialAppWithTheme(),
    );
  }
}
class MaterialAppWithTheme extends StatefulWidget {
  @override
  _MaterialAppWithThemeState createState() => _MaterialAppWithThemeState();
}

class _MaterialAppWithThemeState extends State<MaterialAppWithTheme> {

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      onGenerateRoute: Router.generateRoute,
      initialRoute: '/',
      theme: theme.getTheme(),
      title: 'Restaurant Template',
    );
  }
}

