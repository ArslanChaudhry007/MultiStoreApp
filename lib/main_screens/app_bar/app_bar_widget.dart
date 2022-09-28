import 'package:flutter/material.dart';




class AppBarBackBuuton extends StatelessWidget {
  const AppBarBackBuuton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios_new),
      color: Colors.black,
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}

class GenAppBarTitle extends StatelessWidget {
  const GenAppBarTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.black,
              fontFamily: 'Acme',
              fontSize: 28,
              letterSpacing: 1.5),
        ));
  }
}