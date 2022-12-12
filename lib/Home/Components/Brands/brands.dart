import 'package:clothing_app/Constants/global_variables.dart';
import 'package:clothing_app/Models/list_brandsModel.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../Products/product_design.dart';
import 'brand_design.dart';

class Brands extends StatefulWidget {
  const Brands({super.key});

  @override
  State<Brands> createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  
  List<BrandsModel> demoBrands =[
  BrandsModel(id: 1, title: 'Nike', description: 'Nike is nice', logo: 'https://lh3.googleusercontent.com/FK8EcHV1SJGHeTUJCsUhCQl0hmQu-QbC4wG6bM59S0v-rLv-jQl16YC3LQ4x-ZpPwS1cUs_4Idap57kYgcTCOQFB'),
  BrandsModel(id: 2, title: 'Aurelia', description: 'Aurelia is nice', logo: 'https://shopforaurelia.com/images/aurelia-logo.jpg'),
  BrandsModel(id: 3, title: 'Hermes', description: 'Hermes is nice', logo: 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e4/Herm%C3%A8s.svg/1200px-Herm%C3%A8s.svg.png'),
  BrandsModel(id: 4, title: 'Levis', description: 'Levis is nice', logo: 'https://m.media-amazon.com/images/S/abs-image-upload-na/b/AmazonStores/ATVPDKIKX0DER/db1a93c16294b153654e8fec57fb3b38.w400.h400.jpg'),
  BrandsModel(id: 5, title: 'Zara', description: 'Zara is nice', logo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Zara_Logo.svg/1200px-Zara_Logo.svg.png'),
  BrandsModel(id: 6, title: 'H&M', description: 'H&M is nice', logo: 'https://www2.hm.com/hm-logo.png')
];

@override


  Widget build(BuildContext context) {
  return StreamBuilder<QuerySnapshot>(
  stream: FirebaseFirestore.instance.collection('brands').snapshots(),
 
  builder: (context, snapshot) {
   List<BrandDesign> brandsList = [];
    if (!snapshot.hasData) {
      // final productBrandRef = FirebaseFirestore.instance.collection("products");
      // print(productBrandRef);
      return CircularProgressIndicator();
    }
    else{
    
      final allBrands = snapshot.data?.docs;
      
      for (var brand in allBrands!){

        final logo = brand['logo'];
        final title = brand['title'];
        final description = brand['description'];
       
        // print(title);


      var newbrand =  BrandDesign(title: title, description: description, logo: logo);
      brandsList.add(newbrand);
      }
    }
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
       children: brandsList,
        
      ),
    );
  },

);
}
//     return Container(
//         height: 250,
      
//       child: ListView.builder(
//         itemCount: demoBrands.length,
      
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, i) {
//           return Column(
            
//             children: <Widget>[
        
//               SizedBox(width: 20,),
                   
//               Card(
//                margin: EdgeInsets.symmetric(horizontal: 8),
//                 // color: GlobalVariables.backGroundColor,

//                 child: Column(
//                   children: [
                    
//                     Image.network(demoBrands[i].logo,
//                                    height: 150,
//                                    width: 150,
//                                    fit: BoxFit.cover,
//                       ),
//                     Text(demoBrands[i].title.toString()),
//                     Text(demoBrands[i].description.toString()),
              
              
//                   ],
//                 )

//                   ),
              
         
              

//             ],
//           );
//         }
//       ),
//     );
  
//   }
}