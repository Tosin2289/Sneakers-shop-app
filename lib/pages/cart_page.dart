import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_shop_app/models/cart.dart';

import '../componets/cart_items.dart';
import '../models/shoe.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ShoeShop>(
        builder: ((context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Cart",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.userCart.length,
                      itemBuilder: ((context, index) {
                        Shoe individualShoe = value.getUserCart()[index];
                        return CartItem(
                          shoe: individualShoe,
                        );
                      }),
                    ),
                  ),
                  Container(
                    height: 60,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Pay Now",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Colors.white,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
