import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restomate/features/menu/views/stepper.dart';

import '../../../core/constants/text_style.dart';
import '../../../models/cart.dart';

class CartListItem extends StatelessWidget {
  const CartListItem({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    var cart = context.read<Cart>();
    var item = cart.getByPosition(index);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Text(
                item.name,
                style: RestomateTextStyle.getTextStyle(16, FontWeights.bold),
              ),
              const Spacer(),
              Container(
                width: 90,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.green, width: 2),
                ),
                child: StepperWidget(
                  currentItem: item,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
              '\$ ${(item.price * (cart.countForItem(item.id))).toStringAsFixed(2)}',
              style: RestomateTextStyle.getTextStyle(16, FontWeights.semiBold,
                  color: Colors.black)),
        ],
      ),
    );
  }
}
