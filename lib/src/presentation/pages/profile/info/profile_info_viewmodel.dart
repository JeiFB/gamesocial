import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_gamer_mvvm/src/domain/models/user_data.dart';
import 'package:flutter_gamer_mvvm/src/domain/use_cases/auth/auth_usecases.dart';
import 'package:flutter_gamer_mvvm/src/domain/use_cases/users/users_usecases.dart';
import 'package:flutter_gamer_mvvm/src/domain/utils/resource.dart';

class ProfileInfoViewModel extends ChangeNotifier {

  UsersUseCase _usersUseCase;
  AuthUseCases _authUseCases;
  
  ProfileInfoViewModel(this._usersUseCase, this._authUseCases) {
    getUserById();
  }

  Stream<Resource<UserData>> getUserById() {
    final id = _authUseCases.getUser.userSession?.uid ?? '';    
    return _usersUseCase.getById.launch(id);
  }

  logout() async {
    await _authUseCases.logout.launch();
  }

}