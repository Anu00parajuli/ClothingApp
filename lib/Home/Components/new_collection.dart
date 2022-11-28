// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:clothing_app/Models/list_collectionsModel.dart';


class Collection extends StatefulWidget {
  const Collection({super.key});

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {

  List<CollectionsModel> demoCollections = [
  CollectionsModel(id: 1, title: 'Summer', description: 'Summer Collection', image: 'https://adminassets.devops.arabiaweather.com/sites/default/files/field/image/Summer-beach-image.jpg'),
  CollectionsModel(id: 2, title: 'Winter', description: 'Winter Collection', image: 'https://upload.wikimedia.org/wikipedia/commons/b/b0/Winter_forest_silver.jpg'),
  CollectionsModel(id: 3, title: 'Autumn', description: 'Autumn Collection', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Park_%C5%9Arodula%2C_Sosnowiec_-_01.jpg/1200px-Park_%C5%9Arodula%2C_Sosnowiec_-_01.jpg'),
  CollectionsModel(id: 4, title: 'Random', description: 'Random Collection', image: 'https://image.shutterstock.com/shutterstock/photos/573459652/display_1500/stock-vector-random-pick-ink-hand-lettering-modern-brush-calligraphy-handwritten-phrase-inspiration-graphic-573459652.jpg'),
  CollectionsModel(id: 5, title: 'Wedding', description: 'Wedding Collection', image: 'https://notesnepal.com/wp-content/uploads/2020/09/H.jpg'),
  CollectionsModel(id: 6, title: 'Festive', description: 'Festive Collection', image: 'https://images.asiahighlights.com/allpicture/2020/01/1ce7cfa94db040dcaa147143_cut_600x800_315.jpg')
];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      
      child: ListView.builder(
        itemCount: demoCollections.length,
      
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return Column(
            
            children: <Widget>[
        
              SizedBox(width: 20,),
                   
              Card(
               margin: EdgeInsets.symmetric(horizontal: 8),
                color: Colors.blue,
                child: Column(
                  children: [
                    
                    Image.network(demoCollections[i].image,
                                   height: 150,
                                   width: 150,
                                   fit: BoxFit.cover,
                      ),
                    Text(demoCollections[i].title.toString()),
                    Text(demoCollections[i].description.toString()),
              
              
                  ],
                )
              ),
            ],
          );
        }
      ),
    );
  }
}