import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_shop_app/models/cart.dart';

import '../models/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;

  CartItem({
    Key? key,
    required this.shoe,
  }) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeFromCart() {
    Provider.of<ShoeShop>(context, listen: false).removeFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey[100]),
      child: ListTile(
        leading: Image.asset(widget.shoe.img),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.prize),
        trailing: IconButton(
            onPressed: (() => removeFromCart()), icon: Icon(Icons.delete)),
      ),
    );
  }
}
