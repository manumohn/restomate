import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/menu_item.dart';
import 'item_detail.dart';
import 'item_image.dart';

class MenuListItem extends StatelessWidget {
  const MenuListItem({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    var item = context.select<Menu, MenuItem>(
      (catalog) => catalog.getByPosition(index),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageWidget(url: item.image),
          const SizedBox(width: 8),
          ItemDetailWidget(menuItem: item),
        ],
      ),
    );
  }
}
