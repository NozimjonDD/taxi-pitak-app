import 'package:flutter/material.dart';

import '../home_app_bar/page_app_bar.dart';

class TripHistoryTabPage extends StatefulWidget {
  const TripHistoryTabPage({Key? key}) : super(key: key);

  @override
  State<TripHistoryTabPage> createState() => _ProfileTabPageState();
}

class _ProfileTabPageState extends State<TripHistoryTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          PageAppBar(),
        ],
      ),
    );
  }
}
