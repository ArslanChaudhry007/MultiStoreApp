import 'package:flutter/material.dart';

import '../app_bar/app_bar_widget.dart';

class SubCategoryProducts extends StatelessWidget {
  final String mainCategName;
  final String subCategName;

  const SubCategoryProducts(
      {Key? key, required this.mainCategName, required this.subCategName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const AppBarBackBuuton(),
        title: GenAppBarTitle(title: subCategName),
      ),
      body: Center(
        child: Text(mainCategName),
      ),
    );
  }
}


