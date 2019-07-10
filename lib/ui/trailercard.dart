import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pageapp/models/trailers.dart';
import 'package:url_launcher/url_launcher.dart';


class TrailerCard extends StatelessWidget {
  trail traildata;

  TrailerCard(this.traildata);
//
//  BoxDecoration _CreateBoxDecoration() {
//    return BoxDecoration(
//        color: Colors.white,
//        borderRadius: new BorderRadius.circular(5.0),
//        boxShadow: <BoxShadow>[
//          new BoxShadow(
//            spreadRadius: 0.5,
//            blurRadius: 0.2,
//          )
//        ]
//    );
//  }

  Widget _CreateThumbnail() {
    return ClipRRect(
      borderRadius: new BorderRadius.circular(4.0),
      child: Stack(
        children: <Widget>[
          Image.asset(
            traildata.thumbnail,fit: BoxFit.fill,
          ),
          Positioned(
            bottom: 12.0,
            right: 12.0,
            child: new Material(
              color: Colors.white.withOpacity(0.8),
              type: MaterialType.circle,
              child: new IconButton(
                icon: Icon(Icons.link),
                onPressed: () async {
                  if (await canLaunch(traildata.url)) {
                    await launch(traildata.url);
                  };
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14.0),
//      decoration: _CreateBoxDecoration(),
      child:_CreateThumbnail()

    );
  }
}
