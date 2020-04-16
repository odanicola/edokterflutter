import 'dart:async';

import 'package:edokter/utils/bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class LoginEvent extends Equatable {
  @override 
  List<Object> get props => [];
}

class LoginState extends Equatable {
  @override 
  List<Object> get props => [];
}

class LoginFailed extends LoginState {

}

class LoginBloc extends Bloc {
  LoginBloc();

  @override 
  LoginState get initialState => LoginFailed();

  @override 
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    
  }

  void dispose() {
    
  }
}
