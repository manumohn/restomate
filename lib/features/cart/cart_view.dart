import 'package:flutter/material.dart';
import 'package:restomate/features/cart/widgets/cart_list_view.dart';
import 'package:restomate/features/cart/widgets/cart_total.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cart'),
          centerTitle: false,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const Column(
            children: [
              CartListView(),
              Divider(),
              CartTotal(),
            ],
          ),
        ));
  }
}
