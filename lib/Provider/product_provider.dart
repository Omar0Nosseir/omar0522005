import 'package:flutter/cupertino.dart';
import 'package:omar0522005/Models/product_model.dart';
import 'package:omar0522005/Services/product_services.dart';
import 'package:provider/provider.dart';

class ProductProvider extends ChangeNotifier {

  ProductModel? datamodel;
  Future<void> fetchdata() async
  {
    datamodel = await ProductServices.getalldata();
    notifyListeners();
  }
}