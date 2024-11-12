import 'package:flutter/material.dart';
import 'package:omar0522005/Models/authentication_model.dart';
import 'package:omar0522005/Services/login_services.dart';


class LoginProvider extends ChangeNotifier
{
  AuthenModel? datamodel;

  Future<bool> login (email,passowrd) async
  {
    try
    {
      await LoginServices.postdata(email,passowrd);
      notifyListeners();
      return true;
    }
    catch(e)
    {
      print(e);
    }
    return false;
  }
}