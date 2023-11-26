import 'package:flutter/material.dart';
import 'package:restomate/core/constants/images.dart';
import 'package:restomate/features/menu/views/add_to_cart.dart';

import '../../../core/constants/text_style.dart';
import '../../../models/menu_item.dart';

class ItemPriceSection extends StatelessWidget {
  const ItemPriceSection({Key? key, required this.foodItem}) : super(key: key);
  final MenuItem foodItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        foodItem.veg
            ? Image.asset(
                ImageRes.veg,
                width: 20,
                height: 20,
              )
            : Image.asset(
                ImageRes.nonVeg,
                width: 20,
                height: 20,
              ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '\$ ${foodItem.price.toStringAsFixed(2)}',
            style: RestomateTextStyle.getTextStyle(16, FontWeights.semiBold,
                color: Colors.black),
          ),
        ),
        const Spacer(),
        AddToCartWidget(foodItem: foodItem)
      ],
    );
  }
}
