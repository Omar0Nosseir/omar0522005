import 'package:flutter/material.dart';

class ProductLayout extends StatelessWidget {
  String image;
  String category;
  String product;

  ProductLayout({super.key,
    required this.image,
    required this.category,
    required this.product,

  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        shadowColor: Colors.black,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image.network(image),
              SizedBox(height: 20,),
              Text(category,style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
              Text(product,style: TextStyle( fontSize: 15),),
            ],
          ),
        ),
      ),
    );
  }
}
