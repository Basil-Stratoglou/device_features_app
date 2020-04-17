import 'package:device_features_app/providers/places_provider.dart';
import 'package:device_features_app/screens/places_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: PlacesProvider(),
      child: MaterialApp(
        title: 'Device Features',
        theme:
            ThemeData(primarySwatch: Colors.indigo, accentColor: Colors.amber),
        home: PlacesListScreen(),
      ),
    );
  }
}
