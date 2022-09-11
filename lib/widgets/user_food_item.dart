import 'package:flutter/material.dart';
import 'package:foodapp_provider/providers/food.dart';
import 'package:foodapp_provider/providers/foods.dart';
import 'package:foodapp_provider/screens/edit_item.dart';
import 'package:provider/provider.dart';

class UserFoodItem extends StatelessWidget {
  final Food food;
  UserFoodItem(this.food,);
  /*final String itemId;
  final String title;
  final String imageUrl;*/
  /* Food food = Food(id: id, title: title, description: description, price: price, imageUrl: imageUrl)
*/

   removeFood(BuildContext context){
    var foodList = Provider.of<Foods>(context, listen: false);
    foodList.removeAFoodItem(food.id);
    print('delete');
  }

  @override
  Widget build(BuildContext context) {

    return ListTile(
      title: Text(food.title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(food.imageUrl),
      ),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.of(context).pushNamed(EditItem.routeName,arguments: food);
              },
              color: Theme.of(context).primaryColor,
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
               removeFood(context);
              },
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

