import 'package:flutter/material.dart';

class CollectionsModel {
  late final int id;
  late final String title , description;
  late final String image;

CollectionsModel({
  required this.id,
  required this.title,
  required this.description,
  required this.image
});
}

List<CollectionsModel> demoCollections = [
  CollectionsModel(id: 1, title: 'Summer', description: 'Summer Collection', image: 'https://adminassets.devops.arabiaweather.com/sites/default/files/field/image/Summer-beach-image.jpg'),
  CollectionsModel(id: 2, title: 'Winter', description: 'Winter Collection', image: 'https://upload.wikimedia.org/wikipedia/commons/b/b0/Winter_forest_silver.jpg'),
  CollectionsModel(id: 3, title: 'Autumn', description: 'Autumn Collection', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Park_%C5%9Arodula%2C_Sosnowiec_-_01.jpg/1200px-Park_%C5%9Arodula%2C_Sosnowiec_-_01.jpg'),
  CollectionsModel(id: 4, title: 'Random', description: 'Random Collection', image: 'https://image.shutterstock.com/shutterstock/photos/573459652/display_1500/stock-vector-random-pick-ink-hand-lettering-modern-brush-calligraphy-handwritten-phrase-inspiration-graphic-573459652.jpg'),
  CollectionsModel(id: 5, title: 'Wedding', description: 'Wedding Collection', image: 'https://notesnepal.com/wp-content/uploads/2020/09/H.jpg'),
  CollectionsModel(id: 6, title: 'Festive', description: 'Festive Collection', image: 'https://images.asiahighlights.com/allpicture/2020/01/1ce7cfa94db040dcaa147143_cut_600x800_315.jpg')
];