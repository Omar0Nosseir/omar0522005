
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:omar0522005/Models/authentication_model.dart';
class LoginServices{
  static Dio dio = Dio();
  static postdata(String email , String password) async
  {
    Response res = await dio.post("https://student.valuxapps.com/api/login",
        data: {
          "email":email,
          "password":password,
        }
    );

    if(res.statusCode == 200)
    {
      print(res.data);
      return AuthenModel.fromjson(res.data);
    }
    else
    {
      throw Exception("error in confirming");
    }
  }

}
