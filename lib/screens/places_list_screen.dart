import 'package:device_features_app/providers/places_provider.dart';
import 'package:device_features_app/screens/add_place_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Places'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
            },
          )
        ],
      ),
      body: Center(
        child: Consumer<PlacesProvider>(
          child: Center(
            child: Text('You have no places yet. Add some first!'),
          ),
          builder: (ctx, greatPlaces, ch) => greatPlaces.items.length <= 0
              ? ch
              : ListView.builder(
                  itemCount: greatPlaces.items.length,
                  itemBuilder: (ctx, i) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: FileImage(
                        greatPlaces.items[i].image,
                      ),
                    ),
                    title: Text(greatPlaces.items[i].title),
                    onTap: () {},
                  ),
                ),
        ),
      ),
    );
  }
}
