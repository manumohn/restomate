import 'package:flutter/foundation.dart';
import 'package:restomate/models/menu_item.dart';

class Cart extends ChangeNotifier {
  late Menu _menuItems;

  final Map<String, int> _items = {};

  Menu get menuItems => _menuItems;

  set menuItems(Menu newMenuItems) {
    _menuItems = newMenuItems;
    notifyListeners();
  }

  List<MenuItem> get items =>
      _items.keys.map((id) => _menuItems.getById(id)).toList();

  int countForItem(String id) => _items[id] ?? 0;

  double get totalPrice => items.fold(0,
      (total, current) => total + (current.price * countForItem(current.id)));

  int get totalItems => items.length;

  int get totalItemsInCart =>
      items.fold(0, (total, current) => total + countForItem(current.id));

  MenuItem getByPosition(index) => items[index];

  MenuItem getItemById(id) => menuItems.getById(id);

  void add(MenuItem item) {
    if (_items[item.id] == null) {
      _items[item.id] = 1;
    } else {
      _items[item.id] = _items[item.id]! + 1;
    }
    notifyListeners();
  }

  void remove(MenuItem item) {
    if (_items[item.id] != null) {
      if (_items[item.id]! > 1) {
        _items[item.id] = _items[item.id]! - 1;
      } else {
        _items.remove(item.id);
      }
    }
    notifyListeners();
  }
}
