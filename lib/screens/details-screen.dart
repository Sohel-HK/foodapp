import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/foods.dart';

class FoodDetailScreen extends StatelessWidget {

  static const routeName = '/food-detail';

  //final String id;
  //final String title;
  //final String description;
  //final String price;
  //final String imageUrl;

  const FoodDetailScreen();

  @override
  Widget build(BuildContext context) {

    final itemId = ModalRoute.of(context)!.settings.arguments as String;

    final foodData = Provider.of<Foods>(context);
    final food = foodData.findById(itemId);

    return Scaffold(
      appBar: AppBar(
        title: Text(food.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.asset(food.imageUrl,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '\$${food.price}',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(food.description,
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}