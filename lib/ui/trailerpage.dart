import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pageapp/models/trailers.dart';
import 'package:pageapp/ui/trailercard.dart';
import 'package:pageapp/ui/trailerpageanimamtion.dart';
import 'package:flutter/animation.dart';
import 'dart:ui' as ui;

class TheTrailerPage extends StatelessWidget {
  final Trailers trailer;
  final DetailAnimation animation;

  TheTrailerPage(
      {@required this.trailer, @required AnimationController controller})
      : animation = new DetailAnimation(controller: controller);

  Widget _CreateAnimation(BuildContext context, Widget child) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Opacity(
          opacity: animation.bgdropopacity.value,
          child: Image.asset(
            trailer.backdropimage,
            fit: BoxFit.cover,
          ),
        ),
        BackdropFilter(
          filter: ui.ImageFilter.blur(
              sigmaX: animation.bgdropblur.value,
              sigmaY: animation.bgdropblur.value),
          child: new Container(
            color: Colors.black.withOpacity(0.3),
            child: _CreateContent(),
          ),
        )
      ],
    );
  }

  Widget _CreateContent() {
    return SingleChildScrollView(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _CreateLogo(),
          _CreateAbout(),
          _CreateScroller(),
        ],
      ),
    );
  }

  Widget _CreateAbout() {
    return new Padding(
      padding: const EdgeInsets.all(10.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            color: Colors.white,
            width: animation.devidersize.value,
            height: 2.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              trailer.about,
              style: new TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
                color: Colors.white.withOpacity(animation.aboutopacity.value),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _CreateScroller(){
    return new Padding(padding: const EdgeInsets.all(15.0),
    child: new Transform(
      transform: new Matrix4.translationValues(animation.trailerscrolltranslation.value, 0.0, 0.0),
      child: new SizedBox.fromSize(
        size: Size.fromHeight(255),
        child: new ListView.builder(itemCount: trailer.trailer.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 7.0),
          itemBuilder: (BuildContext context, int index) {
          var trail = trailer.trailer[index];
          return new TrailerCard(trail);
          },

        ),

      ),

    ),
    );



  }

  Widget _CreateLogo() {
    return new Transform(
        transform: new Matrix4.diagonal3Values(animation.avtarsize.value,
            animation.avtarsize.value, animation.avtarsize.value),
        alignment: Alignment.center,
        child: new Container(
          padding: const EdgeInsets.all(3.0),
          margin: EdgeInsets.only(top: 32.0, left: 19.0),
          width: double.infinity,
          height: 100.0,
          child: new Row(
            children: <Widget>[
              new CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Image.asset(
                  trailer.logo,
                  fit: BoxFit.cover,
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new Text(
                  trailer.name,
                  style: new TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              )
            ],
          ),
        ));
  }



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new AnimatedBuilder(
        animation: animation.controller,
        builder: _CreateAnimation,
      ),
    );
  }
}
