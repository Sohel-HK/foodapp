import 'package:flutter/material.dart';
import 'package:foodapp_provider/providers/cart.dart';
import 'package:foodapp_provider/providers/foods.dart';
import 'package:foodapp_provider/screens/add-item.dart';
import 'package:foodapp_provider/screens/cart_screen.dart';
import 'package:foodapp_provider/screens/details-screen.dart';
import 'package:foodapp_provider/screens/edit_item.dart';
import 'package:foodapp_provider/screens/food_detail_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
    ChangeNotifierProvider(create: (_)=>Foods()),
    ChangeNotifierProvider(create: (_)=>Cart()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food App',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: const FoodsOverviewScreen(),
        routes: {
          FoodDetailScreen.routeName:(context) =>  FoodDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
         // '/CartScreen': (ctx) => CartScreen(),
          AddItem.routeName: (ctx) => AddItem(),
          EditItem.routeName:(ctx)=>EditItem(),
        },
      ),
    );
  }
}
