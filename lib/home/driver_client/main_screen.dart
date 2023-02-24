// import 'dart:html';
//
// import 'package:flutter/material.dart';
//
// import '../../utils/colors.dart';
// import '../../widgets/home_tabPages/home_tab.dart';
// import '../../widgets/tabPages/car_tab.dart';
// import '../../widgets/tabPages/passenger_applications_tab.dart';
// import '../../widgets/tabPages/home_tab.dart';
// import '../../widgets/tabPages/profile_tab.dart';
// import '../../widgets/tabPages/rating_tab.dart';
//
//
// class MainScreen extends StatefulWidget {
//   const MainScreen({Key? key}) : super(key: key);
//
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen>
//     with SingleTickerProviderStateMixin {
//   TabController? tabController;
//   int selectedIndex = 0;
//
//   onItemClicked(int index) {
//     setState(() {
//       selectedIndex = index;
//       tabController!.index = selectedIndex;
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     tabController = TabController(length: 5, vsync: this);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: TabBarView(
//         physics: NeverScrollableScrollPhysics(),
//         controller: tabController,
//         children: const [
//           HomeTabPage(),
//           EarningsTabPage(),
//           RatingTabPage(),
//           ProfileTabPage(),
//           CarTabPage(),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//        items: const [
//
//          BottomNavigationBarItem(
//            icon: Icon(Icons.home),
//            label: "Asosiy",
//          ),
//
//          BottomNavigationBarItem(
//            icon: Icon(Icons.credit_card),
//            label: "Hisob",
//          ),
//
//          BottomNavigationBarItem(
//            icon: Icon(Icons.settings),
//            label: "Sozlamalar",
//          ),
//
//          BottomNavigationBarItem(
//            icon: Icon(Icons.person),
//            label: "Profil",
//          ),
//
//          BottomNavigationBarItem(
//            icon: Icon(Icons.car_rental),
//            label: "Avto",
//          ),
//
//        ],
//         unselectedItemColor: AppColors.iconColor1,
//         selectedItemColor: Colors.white,
//         backgroundColor: AppColors.mainColor,
//         type: BottomNavigationBarType.fixed,
//         selectedLabelStyle: const TextStyle(fontSize: 14),
//         showUnselectedLabels: true,
//         currentIndex: selectedIndex,
//         onTap: onItemClicked,
//       ),
//     );
//   }
// }