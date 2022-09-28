import 'package:flutter/material.dart';
import '../../../utilities/categ_list.dart';
import '../category_widget.dart';

class BagsCategory extends StatelessWidget {
  const BagsCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 0.75,
            child: Column(
              children: [
                const CategoryHeaderLabel(
                  lable: 'Men',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.68,
                  child: GridView.count(
                      mainAxisSpacing: 70,
                      crossAxisSpacing: 15,
                      crossAxisCount: 3,
                      children: List.generate(bags.length, (index) {
                        return SubCategoryModel(
                          mainCategName: 'Bags',
                          subCategoryName: bags[index],
                          assetName: 'images/bags/bags$index.jpg',
                          subcategoryLabel: bags[index],
                        );
                      })),
                ),
              ],
            ),
          ),
        ),
        const Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            child: SliderbarWidget(
              mainCategoryName: 'bags',
            ))
      ],
    );
  }
}
