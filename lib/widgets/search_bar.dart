import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: EdgeInsets.only(left: 8),
            width: MediaQuery.of(context).size.width * 0.78,
            child: buildSearchBar()),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.025,
        ),
        Container(
          height: MediaQuery.of(context).size.width * 0.15,
          width: MediaQuery.of(context).size.width * 0.15,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(16)),
          child: Icon(
            Icons.tune_outlined,
            color: Colors.orange,
            size: 36,
          ),
        )
      ],
    );
  }

  Widget buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.search_outlined, size: 40),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: Colors.white,
                width: 2,
              )),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(16)),
          hintStyle: TextStyle(fontSize: 18, color: Colors.black45),
          hintText: "Search Items",
          fillColor: Colors.white,
          filled: true),
    );
  }
}
