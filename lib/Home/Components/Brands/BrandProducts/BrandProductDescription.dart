import 'package:clothing_app/Home/Components/Brands/BrandProducts/BrandProductDesign.dart';
import 'package:flutter/material.dart';

import '../../../../Constants/global_variables.dart';

class BrandProductDescription extends StatefulWidget {
  const BrandProductDescription({super.key, required this.brandProductDesign});
  final BrandProductDesign brandProductDesign;

  @override
  State<BrandProductDescription> createState() => _BrandProductDescriptionState();
}

class _BrandProductDescriptionState extends State<BrandProductDescription> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
       appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
          onTap: () => Navigator.pop(context),
          
          child: Icon(Icons.arrow_back,
          color: GlobalVariables.primarycolor,)),
        ),
        body: Container(
           padding: EdgeInsets.all(12.0),  
            child: GridView.builder(  
              // itemCount: images.length,  
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                  crossAxisCount: 2,  
                  crossAxisSpacing: 4.0,  
                  mainAxisSpacing: 4.0  
              ),  
              itemBuilder: (BuildContext context, int index){  
                // return Image.network(images[index]);  
              },  
            )
            ),  
      ),  
        );
    
    
  }
}