import 'package:flutter/material.dart';
import '../../../utilities/categ_list.dart';
import '../category_widget.dart';

class WomenCategory extends StatelessWidget {
  const WomenCategory({Key? key}) : super(key: key);

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
                  lable: 'Women',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.68,
                  child: GridView.count(
                      mainAxisSpacing: 70,
                      crossAxisSpacing: 15,
                      crossAxisCount: 3,
                      children: List.generate(women.length, (index) {
                        return SubCategoryModel(
                          mainCategName: 'Women',
                          subCategoryName: women[index],
                          assetName: 'images/women/women$index.jpg',
                          subcategoryLabel: women[index],
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
              mainCategoryName: 'Women',
            ))
      ],
    );
  }
}
