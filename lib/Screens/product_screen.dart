import 'package:flutter/material.dart';
import 'package:omar0522005/Provider/product_provider.dart';
import 'package:omar0522005/Services/product_services.dart';
import 'package:omar0522005/Widgets/product_layout.dart';
import 'package:provider/provider.dart';


class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Products")),),
      body: Consumer<ProductProvider>(
        builder: (context, value, child) {
          var value = ProductProvider().datamodel;
          if (value == null) {
            ProductServices.getalldata();
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          else {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: value.banners.length,
              itemBuilder: (context, index) {
                return ProductLayout(
                  image: value.banners[index]["image"],
                  category: value.banners[index]["category"],
                  product: value.banners[index]["product"],
                );
              },
            );
          }
        },
      ),
    );
  }
}
