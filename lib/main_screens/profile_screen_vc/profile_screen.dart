import 'package:flutter/material.dart';
import 'package:multi_store_app/main_screens/profile_screen_vc/profile_widget/profile_account_info_setting.dart';
import 'profile_widget/cart_orders_wishlist.dart';
import 'profile_widget/profile_sliver_appbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          Container(
            height: 230,
            decoration: const BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.yellow, Colors.brown])),
          ),
          CustomScrollView(
            slivers: <Widget>[
              const ProfileSliverAppBar(),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Cart_Orders_Wishlist_Widget(),
                    ),
                    Container(
                      color: Colors.grey.shade300,
                      child: Column(
                        children: [
                          ProfileLogoSizeBox(),
                          const ProfileHeaderLabel(
                              headerTitle: '  Account Info.  '),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Column(
                                children: [
                                  const RepeatedListTile(
                                    title: 'Email Address',
                                    subTitle: 'Example@gmail.com',
                                    icon: Icons.email,
                                  ),
                                  ProfileFieldPadding(),
                                  const RepeatedListTile(
                                    title: 'Phone No.',
                                    subTitle: '+923446818182',
                                    icon: Icons.phone,
                                  ),
                                  ProfileFieldPadding(),
                                  const RepeatedListTile(
                                    title: 'Address',
                                    subTitle: '12K, Model town, Lahore',
                                    icon: Icons.email,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const ProfileHeaderLabel(
                              headerTitle: '  Account Settings  '),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Column(
                                children: [
                                  RepeatedListTile(
                                    title: 'Edit Profile',
                                    subTitle: '',
                                    icon: Icons.edit,
                                    onPressed: () {},
                                  ),
                                  ProfileFieldPadding(),
                                  RepeatedListTile(
                                    title: 'Change Password',
                                    icon: Icons.lock,
                                    onPressed: () {},
                                  ),
                                  ProfileFieldPadding(),
                                  RepeatedListTile(
                                    title: 'Logout',
                                    icon: Icons.logout,
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}



