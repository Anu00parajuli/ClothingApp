import 'package:cached_network_image/cached_network_image.dart';
import 'package:clothing_app/Home/Components/Brands/brand_design.dart';
import 'package:flutter/material.dart';

import '../../../Constants/global_variables.dart';

class BrandDescription extends StatefulWidget {
  const BrandDescription({super.key, required this.brand});
  final BrandDesign brand;

  @override
  State<BrandDescription> createState() => _BrandDescriptionState();
}

class _BrandDescriptionState extends State<BrandDescription> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
          onTap: () => Navigator.pop(context),
          
          child: Icon(Icons.arrow_back,
          color: GlobalVariables.primarycolor,)),
          ),
          body: Container(
        
            height:450,
            width: 400,
            child: Card(
              child: Column(
                children: [
                  Text(widget.brand.title),
                  Text(widget.brand.description),
                  
                   Hero(
                      tag: widget.brand.title,
                     child: CachedNetworkImage(
                        height: 250,
                        width: 250,
                        fit: BoxFit.cover,
                                     placeholder: (context, url) =>
                        AspectRatio(
                          aspectRatio: 1,
                          child: Image.asset('assets/placeholder.jpg')),
                                     imageUrl:widget.brand.logo
                                     
                                   ),
                   ),
                   SizedBox(height: 10,),
                  
                   
                ],
              ),
            ),
          ),
          
        ),
    );
  }
}