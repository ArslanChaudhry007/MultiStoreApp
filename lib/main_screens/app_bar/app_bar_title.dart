import 'package:flutter/material.dart';



class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.yellow),
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              Text(
                'What are you looking for?',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ],
          ),
          Container(
            height: 32,
            width: 75,
            decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(25)),
            child: const Center(
              child: Text(
                'Search',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }
}