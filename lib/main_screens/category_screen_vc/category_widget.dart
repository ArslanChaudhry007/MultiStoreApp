
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sub_category_product_screens_vc/sub_category_product.dart';

List<ItemsData> items = [
  ItemsData(label: 'Men'),
  ItemsData(label: 'women'),
  ItemsData(label: 'electronics'),
  ItemsData(label: 'accessories'),
  ItemsData(label: 'shoes'),
  ItemsData(label: 'home & garden'),
  ItemsData(label: 'beauty'),
  ItemsData(label: 'kids'),
  ItemsData(label: 'bags'),
];


class ItemsData {
  String label;
  bool isSelected;

  ItemsData({required this.label, this.isSelected = false});
}

class CategoryHeaderLabel extends StatelessWidget {
  final String lable;
  const CategoryHeaderLabel({
    Key? key,
    required this.lable
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        lable,
        style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5),
      ),
    );
  }
}

class SubCategoryModel extends StatelessWidget {
  final String mainCategName;
  final String subCategoryName;
  final String assetName;
  final String subcategoryLabel;

  const SubCategoryModel(
      {Key? key,
        required this.mainCategName,
        required this.subCategoryName,
        required this.assetName,
        required this.subcategoryLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SubCategoryProducts(
                    mainCategName: mainCategName,
                    subCategName: subCategoryName)));
      },
      child: Column(
        children: [
          SizedBox(
            height: 70,
            width: 70,
            child: Image(
              image: AssetImage(assetName),
            ),
          ),
          Text(subcategoryLabel, style: const TextStyle(fontSize: 11),)
        ],
      ),
    );
  }
}

class SliderbarWidget extends StatelessWidget {
  final String mainCategoryName;
  const SliderbarWidget({
    Key? key,
    required this.mainCategoryName
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.05,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.brown.withOpacity(0.2),
              borderRadius: BorderRadius.circular(50)),
          child: RotatedBox(
            quarterTurns: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                mainCategoryName == 'bags'? const Text('') : const Text(
                  '<<',
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 10),
                ),
                Text(
                  mainCategoryName.toUpperCase(),
                  style: const TextStyle(
                      color: Colors.brown,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 10),
                ),
                mainCategoryName == 'men'? const Text('') : const Text(
                  '>>',
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
