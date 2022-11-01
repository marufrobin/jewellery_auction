import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildNavButton(Icons.home_filled, "Home"),
          buildNavButton(Icons.handyman_outlined, "Auction"),
          buildNavButton(Icons.favorite_border_outlined, "Saved"),
          buildNavButton(Icons.lightbulb_outline_sharp, "My Bids"),
          buildNavButton(Icons.person_outline_outlined, "My Profile"),
        ],
      ),
    );
  }

  TextButton buildNavButton(IconData icon, String pageName) {
    return TextButton(
      onPressed: () {},
      child: Column(
        children: [
          Icon(
            icon,
            size: 30,
            color: Colors.orange,
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "$pageName",
            style: TextStyle(color: Colors.orange),
          )
        ],
      ),
    );
  }
}
