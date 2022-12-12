import 'package:cached_network_image/cached_network_image.dart';
import 'package:clothing_app/Home/Components/Brands/brand_design.dart';
import 'package:clothing_app/Home/Components/Products/product_descript.dart';
import 'package:clothing_app/Home/Components/Products/product_design.dart';
import 'package:clothing_app/Models/list_productsModel.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class NewProducts extends StatefulWidget {
  
  const NewProducts({super.key});

  @override
  State<NewProducts> createState() => _NewProductsState();
}

class _NewProductsState extends State<NewProducts> {
  

  List<Products> demoProducts = [
  Products(
    id: 1,
    images: "https://static-01.daraz.com.np/p/3c577bee5fa6bfae9570983c7d26a282.jpg",
    title: 'T-shirt',
    price: 2250.0,
    description: 'T-shirt is my love',
    rating: 2.4,
    isFavourite: true,
    isPopular: true,
    Colors: [
      'red', 'blue' , 'pink'
    ],
    Sizes: [
      'S' , 'L', 'XL' , 'XXL'
    ]
    ),
    Products(
    id: 2,
    images: "https://static-01.daraz.com.np/p/5b3f91474409ca033aebed75209d808a.jpg",
    title: 'Pant',
    price: 2250.0,
    description: 'Pant is my love',
    rating: 2.4,
    isFavourite: true,
    isPopular: true,
    Colors: [
      'red', 'blue' , 'pink'
    ],
    Sizes: [
      'S' , 'L', 'XL' , 'XXL'
    ]
    ),
    Products(
    id: 3,
    images: "https://static-01.daraz.com.np/p/851edfb3d2b4bc446029d0359312fcf2.jpg",
    title: 'Jacket',
    price: 2250.0,
    description: 'Jacket is my love',
    rating: 2.4,
    isFavourite: true,
    isPopular: true,
    Colors: [
      'red', 'blue' , 'pink'
    ],
    Sizes: [
      'S' , 'L', 'XL' , 'XXL'
    ]
    ),
    Products(
    id: 4,
    images: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1661285408-timberland-hoodie-1661285401.jpg?crop=1xw:1xh;center,top&resize=480:*",
    title: 'Hoodie',
    price: 2250.0,
    description: 'Hoodie is my love',
    rating: 2.4,
    isFavourite: true,
    isPopular: true,
    Colors: [
      'red', 'blue' , 'pink'
    ],
    Sizes: [
      'S' , 'L', 'XL' , 'XXL'
    ]
    ),
    Products(
    id: 5,
    images: "https://cdn.shopify.com/s/files/1/0182/1471/5470/articles/Designer_Sarees_520x500_3876f942-3cda-41ca-89a2-0c637853d600.jpg?v=1639418628",
    title: 'Saree',
    price: 6500.0,
    description: 'Saree is my love',
    rating: 2.4,
    isFavourite: true,
    isPopular: false,
    Colors: [
      'red', 'blue' , 'pink'
    ],
    Sizes: [
      'S' , 'L', 'XL' , 'XXL'
    ]
    ),
    Products(
    id: 6,
    images: "https://static-01.daraz.com.np/p/8959b1192ddc23cf85751fec4c782bdf.jpg",
    title: 'Kurtha',
    price: 2250.0,
    description: 'Kurtha is my love',
    rating: 2.4,
    isFavourite: true,
    isPopular: true,
    Colors: [
      'red', 'blue' , 'pink'
    ],
    Sizes: [
      'S' , 'L', 'XL' , 'XXL'
    ]
    ),

];


  @override

  Widget build(BuildContext context) {

 return StreamBuilder<QuerySnapshot>(
  stream: FirebaseFirestore.instance.collection('products').snapshots(),
  builder: (context, snapshot) {
   List<ProductDesign> productsList = [];
    if (!snapshot.hasData) {

      return CircularProgressIndicator();
    }
    else{
    
      final allProducts = snapshot.data?.docs;
      for (var product in allProducts!){

        final imagePath = product['images'];
        final title = product['title'];
        final description = product['description'];
        final price = product['price'];
        final rating = product['rating'];
        final isFavourite = product['isFavourite'];
        final sizes = product['sizes'];
        final colors = product['colors'];
        final brandName = product['brandName'];
        // print(title);
        

      var newProduct =  ProductDesign(title: title, description: description, imagePath: imagePath, rating: rating, isFavourite: isFavourite, sizes: sizes, colors: colors, price: price, brandName: 'brandName',);
      productsList.add(newProduct);
      switch (brandName){
        case 'Nike':
        continue;
        case 'H&M' :
        continue;
        case 'Aurelia' :
        continue;
        case 'Hermes' :
        continue;
        case 'H&M' :
        continue;
        case 'Gucci':
        continue;
        case 'Levis':
        continue;
        case 'Zara' :
        continue;  
      }
      }
    }
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
       children: productsList,
        
      ),
    );
  },

);

  //   return Container(
  //     height: 250,
      
  //     child: ListView.builder(
  //       itemCount: demoProducts.length,
      
  //       scrollDirection: Axis.horizontal,
  //       itemBuilder: (context, i) {
  //         return Column(
            
  //           children: <Widget>[
        
  //             SizedBox(width: 20,),
                   
  //             InkWell(
  //               onTap: (){
  //                Navigator.of(context).push(
  //   MaterialPageRoute(
  //     builder: (context) =>  ProductDescription(product: demoProducts[i],),
  //   ),
  // );
  //               },
  //               child: Card(
  //                margin: EdgeInsets.symmetric(horizontal: 8),
  //                 // color: Colors.blue,
  //                 child: Column(
  //                   children: [
              
  //                          Hero(
  //                           tag: [demoProducts[i].title,
  //                                demoProducts[i].description,
  //                                demoProducts[i].isFavourite,
  //                                demoProducts[i].price
  //                                ],

  //                            child: CachedNetworkImage(
  //                                                height: 150,
  //                                                width: 150,
  //                                                fit: BoxFit.cover,
  //                                            placeholder: (context, url) =>
  //                                                AspectRatio(
  //                                                  aspectRatio: 1,
  //                                                  child: Image.asset('assets/placeholder.jpg')),
  //                                            imageUrl:demoProducts[i].images
                                     
  //                                          ),
  //                          ),
                      
  //                     // Image.network(demoProducts[i].images,
  //                     //                height: 150,
  //                     //                width: 150,
  //                     //                fit: BoxFit.cover,
  //                     //   ),
  //                     Text(demoProducts[i].title.toString()),
  //                     Text(demoProducts[i].description.toString()),
  //                     Text(demoProducts[i].price.toString()),
              
  //   //                     db.collection("products").get().then(
  //   //   (res) => print("Successfully completed"),
  //   //   onError: (e) => print("Error completing: $e"),
  //   // );
  //                   ],
                   
  //                 )
              
  //                   ),
  //             ),
              
         
              

  //           ],
  //         );
  //       }
  //     ),
  //   );
  }
}