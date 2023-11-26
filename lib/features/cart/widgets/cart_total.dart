import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/text_style.dart';
import '../../../models/cart.dart';

class CartTotal extends StatelessWidget {
  const CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double totalPrice = context.select<Cart, double>(
      (cart) => cart.totalPrice,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
        children: [
          Text('Total',
              style: RestomateTextStyle.getTextStyle(16, FontWeights.semiBold)),
          const Spacer(),
          Text('\$ ${totalPrice.toStringAsFixed(2)}',
              style: RestomateTextStyle.getTextStyle(16, FontWeights.semiBold))
        ],
      ),
    );
  }
}
