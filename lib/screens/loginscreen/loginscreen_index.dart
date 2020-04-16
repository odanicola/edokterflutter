import 'dart:io';
import 'package:edokter/blocs/loginscreen_bloc.dart';
import 'package:edokter/utils/bloc/bloc-prov.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  Loginscreen({Key key}) : super(key: key);

  @override 
  State<StatefulWidget> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  LoginBloc loginBloc;
  
  @override 
  void initState() {
    super.initState();
    loginBloc = LoginBloc();
  }

  @override 
  void dispose() {
    loginBloc.dispose();
    super.dispose();
  }

  @override 
  Widget build(BuildContext context) {
    
    return BlocProvider(
      bloc: loginBloc,
      child: Scaffold(
        key: _scaffoldKey,
        body: new Builder(builder: (BuildContext context) {
          return Container(
            color: Colors.white,
            child: Text("Login"),
          );
        }),
      )
    );
  }
}