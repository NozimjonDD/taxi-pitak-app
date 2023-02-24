import 'dart:async';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/authentication_tab_pages/login_tab.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer() {
    Timer(Duration(seconds: 3), () async {
      Navigator.push(context, MaterialPageRoute(builder: (c) => LoginScreen()));
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: AppColors.buttonBackgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset('images/logo_taxi.png'),

            const SizedBox(
              height: 10,
            ),

            Text(
              "Pitak TAXI",
              style: TextStyle(
                  fontSize: 25,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.location_pin, color: AppColors.iconColor1, size: 50),
          ],
        ),
      ),
    );
  }
}
