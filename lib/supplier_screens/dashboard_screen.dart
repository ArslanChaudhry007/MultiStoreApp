import 'package:flutter/material.dart';
import 'package:multi_store_app/main_screens/app_bar/app_bar_widget.dart';
import 'package:multi_store_app/supplier_screens/dashboard_screens_vc/edit_business.dart';
import 'package:multi_store_app/supplier_screens/dashboard_screens_vc/manage_products.dart';
import 'package:multi_store_app/supplier_screens/dashboard_screens_vc/supplier_balance.dart';
import 'package:multi_store_app/supplier_screens/dashboard_screens_vc/supplier_orders.dart';
import 'package:multi_store_app/supplier_screens/dashboard_screens_vc/supplier_statics.dart';

import 'dashboard_screens_vc/my_store.dart';

List<String> label = [
  'my store',
  'orders',
  'edit profile',
  'manage products',
  'balance',
  'statics',
];

List<IconData> icons = [
  Icons.store,
  Icons.shop_2_outlined,
  Icons.edit,
  Icons.settings,
  Icons.attach_money,
  Icons.show_chart,
];
List<Widget> pages = [
  const MyStoreScreen(),
  const SupplierOrderScreen(),
  const EditBusinessScreen(),
  const ManageProductScreen(),
  const SupplierBalanceScreen(),
  const SupplierStaticsScreen()
];

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const GenAppBarTitle(title: 'Dashboard'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/welcome_screen');
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: GridView.count(
            mainAxisSpacing: 30,
            crossAxisSpacing: 30,
            crossAxisCount: 2,
            children: List.generate(6, (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => pages[index]));
                },
                child: Card(
                  elevation: 20,
                  shadowColor: Colors.purpleAccent.shade200,
                  color: Colors.blueGrey.withOpacity(0.7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        icons[index],
                        color: Colors.yellow,
                        size: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          label[index].toUpperCase(),
                          style: const TextStyle(
                              fontSize: 24,
                              color: Colors.yellowAccent,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 2,
                              fontFamily: 'Acme'),
                        ),
                      )
                    ],
                  ),
                ),
              );
            })),
      ),
    );
  }
}
