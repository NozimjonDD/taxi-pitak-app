import 'package:flutter/material.dart';

import '../home_app_bar/page_app_bar.dart';

class BalansTabPage extends StatefulWidget {
  const BalansTabPage({Key? key}) : super(key: key);

  @override
  State<BalansTabPage> createState() => _ProfileTabPageState();
}

class _ProfileTabPageState extends State<BalansTabPage> {
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
