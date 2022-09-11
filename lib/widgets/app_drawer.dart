import 'package:flutter/material.dart';
import 'package:foodapp_provider/screens/Orders.dart';
import '../screens/food_list.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('xyz'),
            accountEmail: Text('xyz@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg?w=2000'),
            ),
            decoration: BoxDecoration(color: Colors.blueGrey),
            otherAccountsPictures: [
              CircleAvatar(
              backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032__340.jpg'),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032__340.jpg'),
              )
            ],
          ),
          ListTile(
            title: Text('Main Page'),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(cnx)=> order()));
            },
          ),
          ListTile(
            title: Text('Orders'),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(cnx)=> order()));
            },
          ),

          ListTile(
            title: Text('Manage Foods'),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(cnx){return FoodListScreen();}));
            },
          )
        ],
      ),
    );
  }
}