import 'package:flutter/material.dart';
import 'package:pageapp/repo/repository.dart';
import 'package:pageapp/ui/trailerpage.dart';

class TheTrailerAnimation extends StatefulWidget {
  @override
  _TheTrailerAnimationState createState() => _TheTrailerAnimationState();
}

class _TheTrailerAnimationState extends State<TheTrailerAnimation> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(duration: Duration(milliseconds: 1800)
    ,vsync: this);
    super.initState();

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return TheTrailerPage(trailer: Repodata.data,controller: _controller,);


  }
}
