import 'package:flutter/material.dart';



Widget ProfileLogoSizeBox() {
  return const SizedBox(
    height: 150,
    child: Image(
      image: AssetImage('images/inapp/logo.jpg'),
    ),
  );
}

Widget ProfileFieldPadding() {
  return const Padding(
    padding: EdgeInsets.symmetric(horizontal: 40),
    child: Divider(
      color: Colors.yellow,
      thickness: 1,
    ),
  );
}

class RepeatedListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final Function()? onPressed;

  const RepeatedListTile(
      {Key? key,
        required this.title,
        this.subTitle = '',
        required this.icon,
        this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ListTile(
        title: Text(title),
        subtitle: Text(subTitle),
        leading: Icon(icon),
      ),
    );
  }
}

class ProfileHeaderLabel extends StatelessWidget {
  final String headerTitle;

  const ProfileHeaderLabel({
    Key? key,
    required this.headerTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
            width: 50,
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          Text(headerTitle,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                  fontWeight: FontWeight.w600)),
          const SizedBox(
            height: 40,
            width: 50,
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}