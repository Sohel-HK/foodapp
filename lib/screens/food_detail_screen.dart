import 'package:flutter/material.dart';
import 'package:foodapp_provider/providers/cart.dart';
import 'package:foodapp_provider/widgets/badge.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart';
import '../widgets/app_drawer.dart';
import '../widgets/foods_grid.dart';
import 'cart_screen.dart';

  class FoodsOverviewScreen extends StatelessWidget {
  const FoodsOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Food Order')),
        actions: [
         // IconButton(icon: const Icon(Icons.shopping_cart), color: Colors.deepOrange, onPressed: () {},),
          Consumer<Cart>(
            builder: (context,cart,child)=>Badge(
            value: cart.itemCount.toString(),
            color: Colors.black,
              key: key,
             child: IconButton(
              icon: const Icon(Icons.shopping_cart,size: 30,),
              color: Colors.deepOrange,
              onPressed: (){Navigator.of(context).pushNamed(CartScreen.routeName);},
              // onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>CartScreen()));},
            ),
            ),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body:  FoodsGrid(),
    );
  }
}