import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class DriverActiveApplicationWidget extends StatelessWidget {
  const DriverActiveApplicationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 410,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: AppColors.backgroundColor,
                blurRadius: 5,
                offset: Offset(2, 0))
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3),
                  child: Row(
                    children: [
                      Text(
                        "155 000 so'm",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 90, bottom: 15),
                  child: Row(
                    children: [
                      Text(
                        "Toshkent",
                        style: TextStyle(
                          fontSize: 28,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 15),
                  child: Row(
                    children: [
                      Text(
                        "Olmazor tumani",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(child: Icon(Icons.location_on, size: 20),)
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 160),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "22 : 30",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(child: Icon(Icons.start), margin: EdgeInsets.only(left: 15),),
                    ],
                  ),
                )
              ],
            ),
            // Container(
            //   height: 200,
            //   width: 150,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text(
            //         "Toshkent",
            //         style: TextStyle(
            //           fontSize: 18,
            //           fontWeight: FontWeight.bold,
            //           color: AppColors.mainColor,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(border: Border(right: BorderSide(color: AppColors.paraColor,width: 3.0)))),

            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3, left: 15),
                  child: Row(
                    children: [
                      Text(
                        "Narxni kelishish - yo'q",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 90, bottom: 15, left: 15),
                  child: Row(
                    children: [
                      Text(
                        "Buxoro",
                        style: TextStyle(
                          fontSize: 28,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 15, left: 15),
                  child: Row(
                    children: [
                      Text(
                        "Buxoro shaxar",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(child: Icon(Icons.location_on, size: 20)),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 160),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(child: Icon(Icons.input), margin: EdgeInsets.only(right: 15)),

                      Text(
                        "06 : 00",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )

              ],
            ),

            // Padding(
            //   padding: EdgeInsets.symmetric(vertical: 5),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.end,
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //
            //       Row(
            //         children: [
            //           Container(
            //             // margin: EdgeInsets.symmetric(horizontal: 10),
            //             child: Text(
            //               "01",
            //               style: TextStyle(
            //                 fontSize: 16,
            //                 fontWeight: FontWeight.bold,
            //                 color: AppColors.mainColor,
            //               ),
            //             ),
            //           ),
            //         ],
            //       )
            //     ],
            //   ),
            // )
            // Container()
          ],
        ),
      );
  }
}
