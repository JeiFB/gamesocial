import 'package:flutter/material.dart';
import 'package:flutter_gamer_mvvm/src/domain/utils/resource.dart';
import 'package:flutter_gamer_mvvm/src/presentation/pages/posts/create/posts_create_viewmodel.dart';
import 'package:flutter_gamer_mvvm/src/presentation/utils/show_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PostsCreateResponse {

  BuildContext context;
  PostsCreateViewModel vm;

  PostsCreateResponse(this.context, this.vm) {
    if (vm.response is Loading) {
      buildShowDialog(context);
    }
    else if (vm.response is Error) {
      final data = vm.response as Error;
      Navigator.pop(context);
      Fluttertoast.showToast(
        msg: data.error,
        timeInSecForIosWeb: 4,
        toastLength: Toast.LENGTH_LONG
      );
      vm.resetResponse();
    }
    else if (vm.response is Success) {
      final success = vm.response as Success<String>;
      Navigator.pop(context);
      Fluttertoast.showToast(
        msg: success.data,
        timeInSecForIosWeb: 4,
        toastLength: Toast.LENGTH_LONG
      );
      vm.resetResponse();
      vm.resetState();
    }
  }



}