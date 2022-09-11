import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/foods.dart';
import '../widgets/food_item.dart';

class FoodsGrid extends StatelessWidget {
  const FoodsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final productsData = Foods();

    final foodsData = Provider.of<Foods>(context);
    final foods = foodsData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: foods.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider(create: (_)=> foods[i],
        child: const FoodItem(
          // products[i].id,
          // products[i].title,
          //products[i].description,
          // products[i].price,
          // products[i].imageUrl,
        ),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
    );
  }
}

