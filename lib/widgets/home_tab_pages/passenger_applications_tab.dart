import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../home_app_bar/page_app_bar.dart';
import '../home_app_bar/passenger_list_page_app_bar.dart';

class PassengersApplicationsTabPage extends StatefulWidget {
  const PassengersApplicationsTabPage({Key? key}) : super(key: key);

  @override
  State<PassengersApplicationsTabPage> createState() => _EarningsTabPageState();
}

class _EarningsTabPageState extends State<PassengersApplicationsTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.buttonBackgroundColor,
      body: ListView(
        children: [
          PassengerListPageAppBar(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for(int i =1; i<4; i++)
                Container(
                  height: 110,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.buttonBackgroundColorWhite,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.textColor)
                  ),

                  child: Row(
                    children: [
                      Radio(
                        value: "",
                        groupValue: "",
                        activeColor: AppColors.iconColor2,
                        onChanged: (index) {},
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        margin: EdgeInsets.only(right: 15),
                        child: Image.asset("assets/images/1.jpeg"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Product title",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColors.mainColor,
                              ),
                            ),
                            Text(
                              "\$55",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColors.mainColor,
                              ),
                            )
                          ],
                        ),
                      ),

                      Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.delete,
                              color: AppColors.iconColor1,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.signColor,
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                      )
                                    ],
                                  ),
                                  child: Icon(
                                    CupertinoIcons.plus,
                                    size: 18,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "01",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.mainColor,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.signColor,
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                      )
                                    ],
                                  ),
                                  child: Icon(
                                    CupertinoIcons.minus,
                                    size: 18,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                      // Container()
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
