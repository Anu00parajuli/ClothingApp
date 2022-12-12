import 'package:clothing_app/Home/Components/Brands/brand_description.dart';
import 'package:clothing_app/Home/Components/Brands/our_products.dart';
import 'package:flutter/material.dart';

class BrandDesign extends StatelessWidget {
  final String title;
  final String description;
  final String logo;
  const BrandDesign({super.key, required this.title, required this.description, required this.logo});

  OurProducts ourProduct() {
    return OurProducts();
  }
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:<Widget> [
          SizedBox(width: 20,),
          InkWell(
            onTap: (){
                 Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => BrandDescription(brand: BrandDesign(title: title, description: description, logo: logo))
    )
            );
            },
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                Image.network(logo,
                  height: 150,
                  width: 150,
                  ),
                Text(title.toString()),
                Text(description.toString()),
                OutlinedButton(onPressed: ourProduct, child: Text('Our Products'))
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}