import 'package:flutter/material.dart';

class Sight {
  const Sight(
      {@required this.name,
      @required this.lat,
      @required this.lon,
      @required this.url,
      @required this.details,
      @required this.type})
      : assert(name != null),
        assert(lat != null),
        assert(lon != null),
        assert(url != null),
        assert(details != null),
        assert(type != null);

  final String name;
  final double lat;
  final double lon;
  final String url;
  final String details;
  final String type;
}
