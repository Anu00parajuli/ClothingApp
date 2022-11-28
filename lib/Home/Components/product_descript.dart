import 'package:cached_network_image/cached_network_image.dart';
import 'package:clothing_app/Constants/global_variables.dart';
import 'package:clothing_app/Models/list_productsModel.dart';
import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({super.key, required this.product});
  final Products product;

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
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
                  Text(widget.product.title),
                  Text(widget.product.description),
                  Text(widget.product.price.toString()),
                   Hero(
                      tag: widget.product.title,
                     child: CachedNetworkImage(
                        height: 250,
                        width: 250,
                        fit: BoxFit.cover,
                                     placeholder: (context, url) =>
                        AspectRatio(
                          aspectRatio: 1,
                          child: Image.asset('assets/placeholder.jpg')),
                                     imageUrl:widget.product.images
                                     
                                   ),
                   ),
                   SizedBox(height: 10,),
                   Text('Add to your WishList'),
                  FavoriteButton(
                isFavorite: true,
                // iconDisabledColor: Colors.white,
                valueChanged: (_isFavorite) {
                  // print('Is Favorite : $_isFavorite');
                },
              ),
                   
                ],
              ),
            ),
          ),

        )
        );
  }
}