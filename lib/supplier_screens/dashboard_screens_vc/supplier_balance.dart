import 'package:flutter/material.dart';
import 'package:multi_store_app/main_screens/app_bar/app_bar_widget.dart';

class SupplierBalanceScreen extends StatelessWidget {
  const SupplierBalanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const GenAppBarTitle(title: 'BalanceScreen'),
        leading: const AppBarBackBuuton(),
      ),
    );
  }
}
