import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

import '../../utils/colors.dart';
import '../../widgets/home_body_tab_widgets/driver_application_activ_tab.dart';
import '../../widgets/home_body_tab_widgets/driver_application_create_tab.dart';
import '../../widgets/home_body_tab_widgets/driver_application_no_active_tab.dart';
import '../../widgets/home_tab_pages/balans_tab.dart';
import '../../widgets/home_tab_pages/car_tab.dart';
import '../../widgets/home_tab_pages/passenger_applications_tab.dart';
import '../../widgets/home_tab_pages/trip_history_tab.dart';
import '../../widgets/payment_history_pages/payment_history.dart';

class DriverClientHome extends StatefulWidget {
  const DriverClientHome({Key? key}) : super(key: key);

  @override
  State<DriverClientHome> createState() => _DriverClientHomeState();
}

class _DriverClientHomeState extends State<DriverClientHome> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  // bool homepagevariable = true;
  bool homepagevariable =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text(
          "Taksi Pitak",
          style: TextStyle(
              color: AppColors.textColor, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        actions: [
          Container(
            margin: EdgeInsets.only(
              top: 16,
              right: 16,
            ),
          )
        ],
      ),

      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                0.0,
                1.0
              ],
                  colors: [
                AppColors.buttonBackgroundColor,
                AppColors.buttonBackgroundColor
              ])),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.5, 1.0],
                    colors: [
                      AppColors.backgroundColor,
                      AppColors.buttonBackgroundColor,
                    ],
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text("Menyu",
                      style: TextStyle(
                          fontSize: 25,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              ListTile(
                  leading: Icon(Icons.home,
                      size: _drawerIconSize,
                      color: Theme.of(context).accentColor),
                  title: Text('Asosiy',
                      style:
                          TextStyle(fontSize: 17, color: AppColors.textColor)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DriverClientHome()));
                  }),
              Divider(color: AppColors.textColor, height: 1),
              ListTile(
                leading: Icon(Icons.car_rental,
                    size: _drawerIconSize,
                    color: Theme.of(context).accentColor),
                title: Text('Mening avtomobilim',
                    style: TextStyle(
                        fontSize: _drawerFontSize, color: AppColors.textColor)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CarTabPage()));
                },
              ),
              Divider(color: AppColors.textColor, height: 1),
              ListTile(
                leading: Icon(Icons.person_pin_circle,
                    size: _drawerIconSize,
                    color: Theme.of(context).accentColor),
                title: Text('Yo`lovchilar',
                    style: TextStyle(
                        fontSize: _drawerFontSize, color: AppColors.textColor)),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              PassengersApplicationsTabPage()));
                },
              ),
              Divider(color: AppColors.textColor, height: 1),
              ListTile(
                leading: Icon(Icons.history,
                    size: _drawerIconSize,
                    color: Theme.of(context).accentColor),
                title: Text('Yo`nalishlar tarixi',
                    style: TextStyle(
                        fontSize: _drawerFontSize, color: AppColors.textColor)),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TripHistoryTabPage()));
                },
              ),
              Divider(color: AppColors.textColor, height: 1),
              ListTile(
                leading: Icon(Icons.balance,
                    size: _drawerIconSize,
                    color: Theme.of(context).accentColor),
                title: Text('Balans( to`lovlar tarixi',
                    style: TextStyle(
                        fontSize: _drawerFontSize, color: AppColors.textColor)),
                onTap: () {
                  Navigator.push(context,
                      // MaterialPageRoute(builder: (context) => BalansTabPage()));
                      MaterialPageRoute(builder: (context) => PaymentHistoryBar()));
                },
              ),
              Divider(color: AppColors.textColor, height: 1),
              ListTile(
                leading: Icon(Icons.logout_rounded,
                    size: _drawerIconSize,
                    color: Theme.of(context).accentColor),
                title: Text('Chiqish',
                    style: TextStyle(
                        fontSize: _drawerFontSize, color: AppColors.textColor)),
                onTap: () {
                  SystemNavigator.pop();
                },
              ),
            ],
          ),
        ),
      ),

      // body: Container(
      //   height: 410,
      //   margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      //   padding: EdgeInsets.all(10),
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     boxShadow: [
      //       BoxShadow(
      //           color: AppColors.backgroundColor,
      //           blurRadius: 5,
      //           offset: Offset(2, 0))
      //     ],
      //     borderRadius: BorderRadius.circular(10),
      //   ),
      //   child: Row(
      //     children: [
      //       Column(
      //         children: [
      //           Padding(
      //             padding: EdgeInsets.only(top: 3),
      //             child: Row(
      //               children: [
      //                 Text(
      //                   "155 000 so'm",
      //                   style: TextStyle(
      //                     fontSize: 15,
      //                     color: AppColors.textColor,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //           Padding(
      //             padding: EdgeInsets.only(top: 90, bottom: 15),
      //             child: Row(
      //               children: [
      //                 Text(
      //                   "Toshkent",
      //                   style: TextStyle(
      //                     fontSize: 28,
      //                     color: AppColors.textColor,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           Padding(
      //             padding: EdgeInsets.only(top: 5, bottom: 15),
      //             child: Row(
      //               children: [
      //                 Text(
      //                   "Olmazor tumani",
      //                   style: TextStyle(
      //                     fontSize: 15,
      //                     color: AppColors.textColor,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 ),
      //                 Container(child: Icon(Icons.location_on, size: 20),)
      //               ],
      //             ),
      //           ),
      //
      //           Padding(
      //             padding: const EdgeInsets.only(top: 160),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: [
      //                 Text(
      //                   "22 : 30",
      //                   style: TextStyle(
      //                     fontSize: 15,
      //                     color: AppColors.textColor,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 ),
      //                 Container(child: Icon(Icons.start), margin: EdgeInsets.only(left: 15),),
      //               ],
      //             ),
      //           )
      //         ],
      //       ),
      //       // Container(
      //       //   height: 200,
      //       //   width: 150,
      //       //   child: Row(
      //       //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       //     children: [
      //       //       Text(
      //       //         "Toshkent",
      //       //         style: TextStyle(
      //       //           fontSize: 18,
      //       //           fontWeight: FontWeight.bold,
      //       //           color: AppColors.mainColor,
      //       //         ),
      //       //       ),
      //       //     ],
      //       //   ),
      //       // ),
      //       Container(
      //           padding: const EdgeInsets.all(16.0),
      //           decoration: BoxDecoration(border: Border(right: BorderSide(color: AppColors.paraColor,width: 3.0)))),
      //
      //       Column(
      //         children: [
      //           Padding(
      //             padding: EdgeInsets.only(top: 3, left: 15),
      //             child: Row(
      //               children: [
      //                 Text(
      //                   "Narxni kelishish - yo'q",
      //                   style: TextStyle(
      //                     fontSize: 15,
      //                     color: AppColors.textColor,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //           Padding(
      //             padding: EdgeInsets.only(top: 90, bottom: 15, left: 15),
      //             child: Row(
      //               children: [
      //                 Text(
      //                   "Buxoro",
      //                   style: TextStyle(
      //                     fontSize: 28,
      //                     color: AppColors.textColor,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           Padding(
      //             padding: EdgeInsets.only(top: 5, bottom: 15, left: 15),
      //             child: Row(
      //               children: [
      //                 Text(
      //                   "Buxoro shaxar",
      //                   style: TextStyle(
      //                     fontSize: 15,
      //                     color: AppColors.textColor,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 ),
      //                 Container(child: Icon(Icons.location_on, size: 20)),
      //               ],
      //             ),
      //           ),
      //
      //           Padding(
      //             padding: const EdgeInsets.only(top: 160),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: [
      //                 Container(child: Icon(Icons.input), margin: EdgeInsets.only(right: 15)),
      //
      //                 Text(
      //                   "06 : 00",
      //                   style: TextStyle(
      //                     fontSize: 15,
      //                     color: AppColors.textColor,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           )
      //
      //         ],
      //       ),
      //
      //       // Padding(
      //       //   padding: EdgeInsets.symmetric(vertical: 5),
      //       //   child: Column(
      //       //     crossAxisAlignment: CrossAxisAlignment.end,
      //       //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       //     children: [
      //       //
      //       //       Row(
      //       //         children: [
      //       //           Container(
      //       //             // margin: EdgeInsets.symmetric(horizontal: 10),
      //       //             child: Text(
      //       //               "01",
      //       //               style: TextStyle(
      //       //                 fontSize: 16,
      //       //                 fontWeight: FontWeight.bold,
      //       //                 color: AppColors.mainColor,
      //       //               ),
      //       //             ),
      //       //           ),
      //       //         ],
      //       //       )
      //       //     ],
      //       //   ),
      //       // )
      //       // Container()
      //     ],
      //   ),
      // ),

      body: Column(
        children: <Widget>[
          if (homepagevariable)
            DriverActiveApplicationWidget()
          else
            DriverNotActiveApplicationWidget()
        ],
        // children: [
        //   Container(
        //     height: 150,
        //     margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        //     padding: EdgeInsets.all(10),
        //     decoration: BoxDecoration(
        //       color: Colors.white,
        //       boxShadow: [
        //         BoxShadow(
        //             color: AppColors.backgroundColor,
        //             blurRadius: 5,
        //             offset: Offset(2, 0))
        //       ],
        //       borderRadius: BorderRadius.circular(10),
        //     ),
        //     child: Text(
        //       "Sizda hozirda yo'nalish bo'yicha aktiv e'lon yo'q, qo'shish uchun quidagi tugma orqali qo'shishingiz mumkin!",
        //       style: TextStyle(color: AppColors.textColor, fontSize: 17, fontWeight: FontWeight.bold),
        //     ),
        //   ),
        //
        //   ElevatedButton(
        //     onPressed: ()
        //     {
        //       // Navigator.push(context, MaterialPageRoute(builder: (c) => MainScreen()));
        //       Navigator.push(context, MaterialPageRoute(builder: (c) => DriverApplicationCreate()));
        //     },
        //     style: ElevatedButton.styleFrom(
        //         primary: AppColors.iconColor2
        //     ),
        //     child: Text(
        //       "Qo'shish",
        //       style: TextStyle(color: AppColors.textColor, fontSize: 18, fontWeight: FontWeight.bold),
        //     ),
        //   ),
        //
        // ],
      ),
    );
  }
}
