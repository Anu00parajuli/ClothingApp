import 'package:clothing_app/Home/Components/Brands/BrandProducts/BrandProductDesign.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../../Constants/global_variables.dart';

class OurBrandProducts extends StatefulWidget {
  const OurBrandProducts({super.key, required this.title ,});
  final String title;

  @override
  State<OurBrandProducts> createState() => _OurProuctsState();
}

class _OurProuctsState extends State<OurBrandProducts> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('brands/Gucci/Products').snapshots(),
      builder: (context, snapshot) {
      
      List BrandProductList  = [];
       
    if (!snapshot.hasData) {

      return CircularProgressIndicator();
    }
    else{
      final brandsProducts = snapshot.data?.docs;

      for (var brandProduct in brandsProducts!) {
        final image = brandProduct['Image'];
        final title = brandProduct['title'];
        final price = brandProduct ['price'];
        final description = brandProduct['Description'];

        var newBrandProduct = BrandProductDesign();
        BrandProductList.add(newBrandProduct);
      }
    }
    return  Container(
      // padding: EdgeInsets.all(12.0),  
      //       child: GridView.builder(  
      //         itemCount: BrandProductList.length,  
      //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
      //             crossAxisCount: 2,  
      //             crossAxisSpacing: 4.0,  
      //             mainAxisSpacing: 4.0  
      //         ),  
      //         itemBuilder: (BuildContext context, int index){  
      //           return Container(
      //             child: Column(
      //               children: [
      //                 Text(widget.title.toString())
      //               ],
      //             ),
      //           );
      //           // Image.network(images[index]);  
      //         },  
      //       )
    );
    },
      );
    // return SafeArea(
    //   child: Scaffold(
    //     appBar: AppBar(
    //       backgroundColor: Colors.white,
    //       leading: InkWell(
    //       onTap: () => Navigator.pop(context),
          
    //       child: Icon(Icons.arrow_back,
    //       color: GlobalVariables.primarycolor,)),
    //       ),
    //     body: Container(
    //       child: Center(child: Text('Our Products')),
    //     ),
    //   ),
    // );

  }
}