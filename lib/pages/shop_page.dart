import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_shop_app/componets/shop_tile.dart';
import 'package:sneakers_shop_app/models/cart.dart';
import 'package:sneakers_shop_app/models/shoe.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<ShoeShop>(context, listen: false).addToCart(shoe);
    var snackBar = SnackBar(content: Text("Sucessfully added to cart"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ShoeShop>(
        builder: ((context, value, child) => SafeArea(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(Icons.search),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    child: Text(
                      "Everyone flies ... some fly longer than others",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Hot Picks 🔥",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: value.shoeShop.length,
                      itemBuilder: ((context, index) {
                        Shoe shoe = value.getShoeList()[index];
                        return ShopTile(
                          shoe: shoe,
                          onTap: (() => addShoeToCart(shoe)),
                        );
                      }),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                    child: Divider(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )));
  }
}
