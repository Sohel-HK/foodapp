import 'package:flutter/material.dart';
import 'food.dart';

class Foods extends ChangeNotifier {

  final List<Food>_items = [
    Food(
      id: 'p1',
      title: 'Barger',
      description: 'A Burger - A nice food!',
      price: 100.00,
      imageUrl:'assets/images/barger.jpeg',
    ),
    Food(
      id: 'p2',
      title: 'KFC',
      description: 'A nice pair of Food.',
      price: 249,
      imageUrl:'assets/images/delivery.jpg',
    ),
    Food(
      id: 'p3',
      title: 'Chicken Fry',
      description: 'A Chicken - A nice food!',
      price: 199.99,
      imageUrl:'assets/images/download.jpeg',
    ),
    Food(
      id: 'p4',
      title: 'Pizza',
      description: 'A Pizza - A nice food!',
      price: 399,
      imageUrl:'assets/images/grocery.jpg',
    ),
    Food(
      id: 'p5',
      title: 'Sandwich',
      description: 'A Sandwich - A good food.',
      price: 300,
      imageUrl:'assets/images/images.jpeg',
    ),
    Food(
      id: 'p6',
      title: 'hotdog',
      description: 'A Sandwich - A good food.',
      price: 150,
      imageUrl:'assets/images/hotdog.jpg',
    ),
    Food(
      id: 'p7',
      title: 'french fri',
      description: 'A Sandwich - A good food.',
      price: 400,
      imageUrl:'assets/images/frie.jpg',
    ),
    Food(
      id: 'p8',
      title: 'birani',
      description: 'A Sandwich - A good food.',
      price: 349.65,
      imageUrl:'assets/images/birani.jpg',
    ),
    Food(
      id: 'p9',
      title: 'foska',
      description: 'A Sandwich - A good food.',
      price: 200.99,
      imageUrl:'assets/images/birani.jpg',
    ),
    Food(
      id: 'p10',
      title: 'kabab',
      description: 'So tasty and spicy kebab.',
      price: 249.65,
      imageUrl:'assets/images/kabab.jpg',
    ),
  ];

  List<Food> get items {
    return [..._items];
  }

  Food findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addFood(Food value) {
    _items.add(value);
    notifyListeners();
  }

  void updateFood(Food value){
    _items [_items.indexWhere((element) => element.id == value.id )] = value;
    notifyListeners();
  }
  void removeAFoodItem(String id){
    _items.removeAt(_items.indexWhere((element) => element.id == id));
    notifyListeners();
  }
}
