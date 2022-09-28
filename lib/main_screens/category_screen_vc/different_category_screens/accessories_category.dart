import 'package:flutter/material.dart';
import '../../../utilities/categ_list.dart';
import '../category_widget.dart';

class AccessoriesCategory extends StatelessWidget {
  const AccessoriesCategory({Key? key}) : super(key: key);

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
                  lable: 'Accessories',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.68,
                  child: GridView.count(
                      mainAxisSpacing: 70,
                      crossAxisSpacing: 15,
                      crossAxisCount: 3,
                      children: List.generate(accessories.length, (index) {
                        return SubCategoryModel(
                          mainCategName: 'Accessories',
                          subCategoryName: accessories[index],
                          assetName: 'images/accessories/accessories$index.jpg',
                          subcategoryLabel: accessories[index],
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
              mainCategoryName: 'Accessories',
            ))
      ],
    );
  }
}
