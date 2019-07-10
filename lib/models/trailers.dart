import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Trailers {
  final String name;
  final String about;
  final String logo;
  final String backdropimage;
  final List<trail> trailer;

  Trailers(
      {@required this.name,
      @required this.about,
      @required this.logo,
      @required this.backdropimage,
      @required this.trailer});
}

class trail {
  final String title;
  final String thumbnail;
  final String url;

  trail({@required this.title, @required this.thumbnail, @required this.url});
}
