import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restomate/models/cart.dart';

import 'cart_list_item.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  @override
  Widget build(BuildContext context) {
    Cart cart = Provider.of(context, listen: true);
    var itemCount = cart.totalItems;
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (_, index) => CartListItem(
          index: index,
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: itemCount,
      ),
    );
  }
}
