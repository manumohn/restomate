import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restomate/models/menu_item.dart';

import '../../../models/cart.dart';

class StepperWidget extends StatelessWidget {
  const StepperWidget({Key? key, required this.currentItem}) : super(key: key);
  final MenuItem currentItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            var cart = context.read<Cart>();
            cart.remove(currentItem);
          },
          child: const Icon(Icons.remove, size: 14),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Consumer<Cart>(
              builder: (context, cart, child) =>
                  Text('${cart.countForItem(currentItem.id)}')),
        ),
        GestureDetector(
          onTap: () {
            var cart = context.read<Cart>();
            cart.add(currentItem);
          },
          child: const Icon(Icons.add, size: 14),
        ),
      ],
    );
  }
}
