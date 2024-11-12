import 'package:flutter/material.dart';
import 'package:omar0522005/Models/authentication_model.dart';
import 'package:omar0522005/Services/login_services.dart';
import 'package:omar0522005/Services/signup_services.dart';


class SignUpProvider extends ChangeNotifier
{
  AuthenModel? datamodel;
  Future<bool> signup (name, email, password,phone) async
  {
    try
    {
     await SignupServices.postdata(name, email, password,phone);
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