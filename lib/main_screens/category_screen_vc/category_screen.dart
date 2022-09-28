import 'package:flutter/material.dart';
import 'package:multi_store_app/main_screens/category_screen_vc/category_widget.dart';
import 'package:multi_store_app/main_screens/category_screen_vc/different_category_screens/accessories_category.dart';
import 'package:multi_store_app/main_screens/category_screen_vc/different_category_screens/bags_category.dart';
import 'package:multi_store_app/main_screens/category_screen_vc/different_category_screens/beauty_category.dart';
import 'package:multi_store_app/main_screens/category_screen_vc/different_category_screens/electronices_category.dart';
import 'package:multi_store_app/main_screens/category_screen_vc/different_category_screens/home_graden_category.dart';
import 'package:multi_store_app/main_screens/category_screen_vc/different_category_screens/kids_category.dart';
import 'package:multi_store_app/main_screens/category_screen_vc/different_category_screens/men_category.dart';
import 'package:multi_store_app/main_screens/category_screen_vc/different_category_screens/shoes_category.dart';
import 'package:multi_store_app/main_screens/category_screen_vc/different_category_screens/woman_category.dart';
import '../app_bar/app_bar_title.dart';
import '../search_screen_vc/search_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    for (var element in items) {
      element.isSelected = false;
    }
    items[0].isSelected = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchScreen()));
              },
              child: const AppBarTitle())),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            child: SideNavigationWidget(context),
          ),
          Positioned(bottom: 0, top: 0, right: 0, child: CategView()),
        ],
      ),
    );
  }

  Widget CategView() {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 0.8,
      color: Colors.white,
      child: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() {
            for (var element in items) {
              element.isSelected = false;
            }
            items[value].isSelected = true;
          });
        },
        scrollDirection: Axis.vertical,
        children: const [
          MenCategory(),
          WomenCategory(),
          ElectronicCategory(),
          AccessoriesCategory(),
          ShoesCategory(),
          HomeAndGardenCategory(),
          BeautyCategory(),
          KidsCategory(),
          BagsCategory()
        ],
      ),
    );
  }

// side navigation list and click
  Widget SideNavigationWidget(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 0.2,
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            debugPrint('ItemsCount: $index');
            return GestureDetector(
              onTap: () {
                _pageController.animateToPage(index,
                    duration: const Duration(microseconds: 100),
                    curve: Curves.bounceInOut);
                /*setState(() {
                  for (var element in items) {
                    element.isSelected = false;
                  }
                  items[index].isSelected = true;
                });*/
              },
              child: Container(
                  color: items[index].isSelected == true
                      ? Colors.white
                      : Colors.grey.shade300,
                  height: 100,
                  child: Center(child: Text(items[index].label))),
            );
          }),
    );
  }
}
