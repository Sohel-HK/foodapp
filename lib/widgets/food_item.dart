import 'package:flutter/material.dart';
import 'package:foodapp_provider/providers/cart.dart';
import 'package:foodapp_provider/screens/details-screen.dart';
import 'package:provider/provider.dart';
import '../providers/food.dart';

class FoodItem extends StatelessWidget {

  //final String id;
  //final String title;
  //final String description;
  // final String price;
  // final String imageUrl;

  const FoodItem();

  @override
  Widget build(BuildContext context) {
    final food = Provider.of<Food>(context);
    final cart = Provider.of<Cart>(context,listen: false);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black45,
          leading: IconButton(
            icon: Icon(food.isFavorite?Icons.favorite:Icons.favorite_border),
            color: Colors.amberAccent,
            onPressed: () {
              food.togglefavorate();
            },
          ),
          title: Text(
            food.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: const Icon(Icons.shopping_cart,
            ),
            onPressed: () {
            cart.addItem(food.id, food.price,food.title);
            ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text("This item added",textAlign: TextAlign.center,),
              duration: Duration(seconds: 5),action: SnackBarAction(label: 'Undo', onPressed: (){cart.removeItem(food.id);}),
            )
            );
            },
            color: Colors.deepPurple,
          ),
        ),
        child: GestureDetector(
          onTap: () {Navigator.of(context).pushNamed(FoodDetailScreen.routeName, arguments: food.id);
            //Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FoodDetailScreen(id)));
          },
          child: SafeArea(
            child: Image.asset(
              food.imageUrl,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );
  }
}