import 'package:dio/dio.dart';
import 'package:omar0522005/Models/authentication_model.dart';
import 'package:omar0522005/Models/product_model.dart';

class ProductServices
{
  static Dio dio = Dio();
  static Future<ProductModel> getalldata()async
  {
    Response res = await dio.get("https://student.valuxapps.com/api/home");

    if(res.statusCode == 200)
    {
      print(res.data);
      return ProductModel.fromjson(res.data);
    }
    else
    {
      throw Exception("error adding");
    }

  }
}