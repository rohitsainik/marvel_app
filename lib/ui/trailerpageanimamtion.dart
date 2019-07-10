import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';


class DetailAnimation {
  final AnimationController controller;
  final Animation<double> bgdropopacity;
  final Animation<double> bgdropblur;
  final Animation<double> avtarsize;
  final Animation<double> nameopacity;
  final Animation<double> devideropacity;
  final Animation<double> aboutopacity;
  final Animation<double> devidersize;
  final Animation<double> trailerscrolltranslation;
  final Animation<double> trailercrollopacity;

  DetailAnimation({this.controller})
      :
        bgdropopacity = new Tween(begin: 0.3, end: 1.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.000, 0.500, curve: Curves.ease))),
        bgdropblur = new Tween(begin: 0.0, end: 5.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.000, 0.500, curve: Curves.ease))),
        avtarsize = new Tween(begin: 0.0, end: 1.0).animate(new CurvedAnimation(
            parent: controller,
            curve: new Interval(0.100, 0.400, curve: Curves.elasticInOut))),
        nameopacity = new Tween(begin: 0.0, end: 1.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.000, 0.500, curve: Curves.easeIn))),
        aboutopacity = new Tween(begin: 0.0, end: 0.70).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.000, 0.550, curve: Curves.easeIn))),
        devideropacity = new Tween(begin: 0.0, end: 225.0).animate(
            new CurvedAnimation(
                curve: new Interval(0.500, 0.600, curve: Curves.elasticInOut),
                parent: controller)),
        devidersize = new Tween(begin: 0.0, end: 225.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.500, 0.600, curve: Curves.elasticInOut))),
        trailercrollopacity = new Tween(begin: 0.0, end: 1.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.830, 0.000, curve: Curves.easeIn))),
        trailerscrolltranslation = new Tween(begin: 60.0, end: 0.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.830, 0.000, curve: Curves.easeIn)))



  ;
}
