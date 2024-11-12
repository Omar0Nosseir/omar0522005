import 'dart:convert';

import 'package:flutter/material.dart';

class AuthenModel{
  Map<String,dynamic> data;
  AuthenModel({required this.data });
  factory AuthenModel.fromjson(Map<String,dynamic> Json){
    return AuthenModel(data: Json["data"]);
  }
}