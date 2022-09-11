import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.purple,);
  }
}
