import 'package:flutter/material.dart';
import 'package:restomate/core/constants/text_style.dart';

import '../../../models/menu_item.dart';
import 'item_price_section.dart';

class ItemDetailWidget extends StatelessWidget {
  const ItemDetailWidget({Key? key, required this.menuItem}) : super(key: key);
  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              menuItem.name,
              style: RestomateTextStyle.getTextStyle(16, FontWeights.bold),
            ),
            const SizedBox(height: 4),
            Text(
              menuItem.description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: RestomateTextStyle.getTextStyle(12, FontWeights.semiBold,
                  color: Colors.grey),
            ),
            const Spacer(),
            ItemPriceSection(foodItem: menuItem),
          ],
        ),
      ),
    );
  }
}
