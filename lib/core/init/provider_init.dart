import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:restomate/models/cart.dart';

import '../../models/menu_item.dart';

class ProviderInit extends StatelessWidget {
  final Widget child;

  const ProviderInit({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => Menu()),
        ChangeNotifierProxyProvider<Menu, Cart>(
          create: (context) => Cart(),
          update: (context, menuItems, cart) {
            if (cart == null) throw ArgumentError.notNull('cart');
            cart.menuItems = menuItems;
            return cart;
          },
        ),
      ],
      child: child,
    );
  }
}
