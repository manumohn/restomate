import 'package:flutter/material.dart';
import 'package:restomate/core/constants/text_style.dart';
import 'package:restomate/core/routes/route_enerator.dart';

class PlaceOrderBottomBar extends StatelessWidget {
  const PlaceOrderBottomBar({Key? key, required this.cartCount})
      : super(key: key);
  final int cartCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      height: 64,
      width: double.infinity,
      color: Colors.grey.shade100,
      child: Row(
        children: [
          const Icon(Icons.shopping_cart_outlined, size: 20),
          const SizedBox(width: 4),
          Text(
            '$cartCount items',
            style: RestomateTextStyle.getTextStyle(14, FontWeights.semiBold),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, Routes.cartRoute),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
            ),
            child: Text(
              'Place Order',
              style: RestomateTextStyle.getTextStyle(16, FontWeights.bold,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
