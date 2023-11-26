import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restomate/features/menu/views/stepper.dart';

import '../../../core/constants/text_style.dart';
import '../../../models/cart.dart';
import '../../../models/menu_item.dart';

class AddToCartWidget extends StatelessWidget {
  const AddToCartWidget({Key? key, required this.foodItem}) : super(key: key);
  final MenuItem foodItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.green, width: 2),
      ),
      child: Consumer<Cart>(
        builder: (context, cart, child) {
          var count = cart.countForItem(foodItem.id);
          if (count > 0) {
            return StepperWidget(
              currentItem: foodItem,
            );
          } else {
            return GestureDetector(
              onTap: () {
                var cart = context.read<Cart>();
                cart.add(foodItem);
              },
              child: SizedBox(
                  width: 90,
                  child: Text(
                    'ADD',
                    textAlign: TextAlign.center,
                    style: RestomateTextStyle.getTextStyle(
                        14, FontWeights.semiBold,
                        color: Colors.green),
                  )),
            );
          }
        },
      ),
    );
  }
}
