import 'package:flutter/cupertino.dart';
import 'package:sneakers_shop_app/models/shoe.dart';
import 'package:provider/provider.dart';

class ShoeShop extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: "Zoom FREAK",
        prize: '250',
        img: 'assets/zoom.png',
        description:
            'The forward-thinking design of his latest signature shoe.'),
    Shoe(
        name: "Air Max",
        prize: '280',
        img: 'assets/shoe5.png',
        description:
            'You\'ve got the hops and the speed-lace up in shoes that enhance what you bring to the court'),
    Shoe(
        name: "KD Treys",
        prize: '240',
        img: 'assets/shoe1.png',
        description:
            'A secure midfoot strap is suited for scoring binges and defensive stands so that you can lock in and keep winning'),
    Shoe(
        name: "Kyrie 6",
        prize: '150',
        img: 'assets/shoe4.png',
        description:
            'Bouncy cushioning is paired with soft yet supportive foam for responsivenes and smooth head-to-toe transitions'),
  ];
  List<Shoe> userCart = [];
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
