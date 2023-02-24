import 'package:flutter/material.dart';

import '../home_app_bar/page_app_bar.dart';

class RatingTabPage extends StatefulWidget {
  const RatingTabPage({Key? key}) : super(key: key);

  @override
  State<RatingTabPage> createState() => _RatingTabPageState();
}

class _RatingTabPageState extends State<RatingTabPage> {
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
