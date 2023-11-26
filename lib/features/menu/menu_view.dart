import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restomate/features/menu/views/menu_list_item.dart';
import 'package:restomate/features/menu/views/place_order_bottom_bar.dart';
import 'package:restomate/models/menu_item.dart';

import '../../models/cart.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int itemCount = context.select<Menu, int>(
      (catalog) => catalog.itemCount,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Salad & Soups'),
        centerTitle: false,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
          itemBuilder: (_, index) => MenuListItem(index: index),
          separatorBuilder: (_, index) => const Divider(),
          itemCount: itemCount,
        ),
      ),
      bottomNavigationBar: Consumer<Cart>(
        builder: (context, cart, child) {
          return cart.totalItemsInCart > 0
              ? PlaceOrderBottomBar(
                  cartCount: cart.totalItemsInCart,
                )
              : Container();
        },
      ),
      extendBody: true,
    );
  }
}
