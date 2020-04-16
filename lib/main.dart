import 'package:edokter/blocs/loginscreen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:edokter/utils/bloc/bloc-prov-tree.dart';
import 'package:edokter/utils/bloc/bloc-prov.dart';
import 'package:edokter/utils/bloc/bloc.dart';
import 'package:edokter/themes/edokter_theme.dart';
import 'package:edokter/routes.dart';
import 'package:edokter/blocs/blocs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProviderTree(
      blocProviders: <BlocProvider> [
        BlocProvider<LoginBloc>(bloc: LoginBloc())
      ],
      child: MaterialApp(
        title: 'eDokter',
        theme: infokesTheme,
        initialRoute: '/',
        routes: routes,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}


