import 'dart:convert';

class Menu {
  static List<MenuItem> menuItems = menuItemFromJson(_datajson);

  int get itemCount => menuItems.length;

  MenuItem getById(id) => menuItems.firstWhere((element) => element.id == id);

  MenuItem getByPosition(index) => menuItems[index];
}

List<MenuItem> menuItemFromJson(String str) =>
    List<MenuItem>.from(json.decode(str).map((x) => MenuItem.fromJson(x)));

class MenuItem {
  final String id;
  final String name;
  final String? image;
  final double price;
  final bool veg;
  final String description;

  MenuItem({
    required this.id,
    required this.name,
    this.image,
    required this.price,
    required this.veg,
    required this.description,
  });

  factory MenuItem.fromJson(Map<String, dynamic> json) => MenuItem(
        id: json["_id"],
        name: json["name"],
        image: json["image"],
        price: json["price"],
        veg: json["veg"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "image": image,
        "price": price,
        "veg": veg,
        "description": description,
      };
}

const String _datajson =
    """[{"_id":"5eee651f739f8c674fd736ee","name":"Tofu Bao","image":"https://photo2.foodgawker.com/wp-content/uploads/2020/12/3673283.jpg","price":250.00,"veg":true,"description":"crispy, fried tofu bites mixed in a spicy, topped Sausage"},{"_id":"5eee6671a27a66807cf2bea2","name":"Tacos De alambre","image":"https://photo.foodgawker.com/wp-content/uploads/2020/10/3652339.jpg","price":300.00,"veg":false,"description":"chicken cooked with bacon, topped with Oaxaca cheese"},{"_id":"5eee6692a27a66807cf2bea3","name":"Tacos Al Pastor","image":"https://photo2.foodgawker.com/wp-content/uploads/2020/11/3666680.jpg","price":200.00,"veg":true,"description":"warmth from spices and sweetness from pineapple"},{"_id":"5eee66a5a27a66807cf2bea4","name":"Chicken Bruschetta","image":"https://photo.foodgawker.com/wp-content/uploads/2020/10/3655673.jpg","price":500.00,"veg":false,"description":"crunch, succulent juicy chicken and a glaze drizzle"},{"_id":"5eee66c4a27a66807cf2bea5","name":"Vegetarian Frito Pie","image":"https://photo2.foodgawker.com/wp-content/uploads/2020/10/3650127.jpg","price":350.00,"veg":true,"description":"Kick off the week than with this Vegetarian Frito Pie"},{"_id":"5eee66cfa27a66807cf2bea6","name":"Kafta Kebabs","image":"https://photo2.foodgawker.com/wp-content/uploads/2020/09/3647666.jpg","price":200.00,"veg":true,"description":"beautifully flavored with spices and fresh parsley"},{"_id":"5eee66eea27a66807cf2bea7","name":"Balik Ekmek","image":"https://photo2.foodgawker.com/wp-content/uploads/2020/09/3642459.jpeg","price":600.00,"veg":false,"description":"BALIK EKMEK / ISTANBUL STREET FLAVOR, FISH SANDWICH"},{"_id":"5eee6717a27a66807cf2bea8","name":"Kielbasa Quesadillas","image":"https://photo2.foodgawker.com/wp-content/uploads/2020/07/3625674.jpg","price":500.00,"veg":false,"description":"Sausage, peppers, and onions with a twist: Kielbasa Quesadillas"},{"_id":"5eee6717a27a66807cf2bea9","name":"Ground Tacos","image":"https://photo.foodgawker.com/wp-content/uploads/2020/08/3631018.jpg","price":400.00,"veg":false,"description":"Sandwiches have eggs, bacon, cheese, avocado, spinach, and tomato"}]""";
