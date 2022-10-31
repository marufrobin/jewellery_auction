import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Hey Robin",
            style: TextStyle(
                fontSize: 40, fontFamily: "Noto", fontWeight: FontWeight.w800),
          ),
          Container(
              padding: EdgeInsets.all(4),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  borderRadius: BorderRadius.circular(8)),
              child: Stack(children: [
                Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.orange.shade400,
                  size: 40,
                ),
                Positioned(
                  top: 2,
                  right: 10,
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.red,
                  ),
                )
              ]))
        ],
      ),
    );
  }
}
