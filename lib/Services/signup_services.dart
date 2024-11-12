import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:omar0522005/Models/authentication_model.dart';
class SignupServices{
  static Dio dio = Dio();
  static postdata(String name, String phone, String email , String password) async
  {
    Response res = await dio.post("https://student.valuxapps.com/api/register",
      data: {
        "username": name,
        "email":email,
        "phone":phone,
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
          throw Exception("error adding");
        }
    }

  }
