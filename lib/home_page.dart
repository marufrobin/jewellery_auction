import 'package:flutter/material.dart';
import 'package:jewellery_auction/model/model_data.dart';
import 'package:jewellery_auction/widgets/custom_app_bar.dart';
import 'package:jewellery_auction/widgets/custom_nav_bar.dart';
import 'package:jewellery_auction/widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  var modelData = ModelData.modelData();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffDACBA4),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Let's Make A Bid",
                  style: TextStyle(
                      fontFamily: "Noto", fontSize: 20, color: Colors.black54),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SearchBar(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
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
              ),
              SizedBox(
                height: 16,
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
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trending Auctions",
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  // scrollDirection: Axis.horizontal,
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  children: List.generate(
                      modelData.length,
                      (index) => Container(
                            margin: EdgeInsets.all(4),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.circular(16)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Image.asset(
                                      "${modelData[index].productImageName}",
                                      fit: BoxFit.cover,
                                    )),
                                Text(
                                  "${modelData[index].productName}",
                                  style: TextStyle(
                                    fontFamily: "Noto",
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Current Bid",
                                          style: TextStyle(
                                              fontFamily: "Noto",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey.shade700),
                                        ),
                                        Text(
                                          "\$${modelData[index].price}",
                                          style: TextStyle(
                                              fontFamily: "Noto",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey.shade700),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(2),
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Text(
                                        "Bid Now",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: CustomNavBar(),
      ),
    );
  }
}
