import 'package:flutter/material.dart';
import 'package:jewellery_auction/model/model_data.dart';
import 'package:jewellery_auction/widgets/custom_app_bar.dart';
import 'package:jewellery_auction/widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  var modelData = ModelData.modelData();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffDACBA4),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            Text(
              "Let's Make A Bid",
              style: TextStyle(
                  fontFamily: "Noto", fontSize: 20, color: Colors.black54),
            ),
            SearchBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Noto",
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Noto",
                      color: Colors.orange.shade600,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.4,
              // color: Colors.grey,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 16),
                      width: 140,
                      decoration: BoxDecoration(
                          color: Color(0xffF2E8CE),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              flex: 2,
                              child: Image.asset(
                                "${modelData[index].productImageName}",
                                fit: BoxFit.cover,
                              )),
                          Text(
                            "${modelData[index].productCategories}",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Noto",
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    );
                  }),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                  itemCount: modelData.length),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Noto",
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Noto",
                      color: Colors.orange.shade600,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
