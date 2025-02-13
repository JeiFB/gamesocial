import 'package:flutter_gamer_mvvm/src/domain/use_cases/users/getuserbyid_usecase.dart';
import 'package:flutter_gamer_mvvm/src/domain/use_cases/users/getuserbyidonce_usecase.dart';
import 'package:flutter_gamer_mvvm/src/domain/use_cases/users/update_image_usecase.dart';
import 'package:flutter_gamer_mvvm/src/domain/use_cases/users/update_user_usecase.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class UsersUseCase {

  GetUserById getById;
  GetUserByIdOnce getUserByIdOnce;
  UpdateUserUseCase updateWithoutImage;
  UpdateWithImageUseCase updateWithImage;

  UsersUseCase({
    required this.getById, 
    required this.getUserByIdOnce, 
    required this.updateWithoutImage,
    required this.updateWithImage,
  });

}