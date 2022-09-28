import 'package:flutter/material.dart';

class ProfileSliverAppBar extends StatelessWidget {
  const ProfileSliverAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      elevation: 0,
      backgroundColor: Colors.white,
      expandedHeight: 140,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          return FlexibleSpaceBar(
            centerTitle: true,
            title: AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: constraints.biggest.height <= 120 ? 1 : 0,
              child: const Text(
                'Account',
                style: TextStyle(color: Colors.black),
              ),
            ),
            background: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.yellow, Colors.brown])),
              child: Row(
                children: [
                  ProfileImage(),
                ProfileName(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


Widget ProfileImage(){
  return  const Padding(
    padding: EdgeInsets.only(top: 25, left: 30),
    child: CircleAvatar(
      radius: 50,
      backgroundImage:
      AssetImage('images/inapp/guest.jpg'),
    ),
  );
}
Widget ProfileName(){
  return   Padding(
    padding: const EdgeInsets.only(left: 25),
    child: Text(
      'guest'.toUpperCase(),
      style: const TextStyle(
          fontSize: 24, fontWeight: FontWeight.w600),
    ),
  );
}