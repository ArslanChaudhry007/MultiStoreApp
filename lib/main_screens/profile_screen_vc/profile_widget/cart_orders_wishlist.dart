import 'package:flutter/material.dart';

class Cart_Orders_Wishlist_Widget extends StatelessWidget {
  const Cart_Orders_Wishlist_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ProfileCart(context),
        ProfileOrders(context),
        ProfileWishlist(context)
      ],
    );
  }
}






Widget ProfileCart(BuildContext context){
  return Container(
    decoration: const BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30))),
    child: TextButton(
      onPressed: () {},
      child: SizedBox(
        height: 40,
        width: MediaQuery.of(context).size.width * 0.2,
        child: const Center(
            child: Text(
              'Cart',
              style: TextStyle(
                  color: Colors.yellow, fontSize: 20),
            )),
      ),
    ),
  );
}
Widget ProfileOrders(BuildContext context){
  return   Container(
    color: Colors.yellow,
    child: TextButton(
      onPressed: () {},
      child: SizedBox(
        height: 40,
        width: MediaQuery.of(context).size.width * 0.2,
        child: const Center(
            child: Text(
              'Orders',
              style: TextStyle(
                  color: Colors.black54, fontSize: 20),
            )),
      ),
    ),
  );
}
Widget ProfileWishlist(BuildContext context){
  return       Container(
    decoration: const BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30))),
    child: TextButton(
      onPressed: () {},
      child: SizedBox(
        height: 40,
        width: MediaQuery.of(context).size.width * 0.2,
        child: const Center(
            child: Text(
              'Wishlist',
              style: TextStyle(
                  color: Colors.yellow, fontSize: 20),
            )),
      ),
    ),
  );
}