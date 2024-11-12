class ProductModel
{
  List<dynamic> banners;
  ProductModel({required this.banners});
  factory ProductModel.fromjson(Map<String,dynamic> Json)
  {
    return ProductModel(banners: Json["banners"]);
  }

}