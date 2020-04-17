import 'package:device_features_app/models/place.dart';
import 'package:flutter/foundation.dart';

class PlacesProvider with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }
}