import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class Splashscreen extends StatefulWidget {
  Splashscreen({Key key}) : super(key: key);

  @override
  State createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> with SingleTickerProviderStateMixin{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  AnimationController _controller;

  @override 
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: new Duration(seconds: 3),
    );

    _controller.repeat();

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.blue, // navigation bar color
      statusBarColor: Colors.white, // status bar color
      statusBarIconBrightness: Brightness.dark
    ));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      body: new Builder(builder: (BuildContext context) {
        return Container(
          color: Colors.white,
          child: _buildBody(),
        );
      }),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Container(
        margin: EdgeInsets.all(16.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedBuilder(
              animation: _controller,
              builder: (BuildContext context, Widget _widget) {
                var angle = _controller.value * 6.3;
                return new Transform.rotate(
                  angle: angle,
                  child: _widget,
                );
              },
              child: new Container(
                height: 75.0,
                width: 75.0,
                child: new Image.asset("assets/edokter.png"),
              ),
            ),
            RaisedButton(onPressed: () {
              Navigator.of(_scaffoldKey.currentContext).popAndPushNamed("/login");
            })
          ],
        ),
      ),
    );
  }
}