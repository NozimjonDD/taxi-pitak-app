import 'package:flutter/material.dart';

import '../../common/theme_helper.dart';
import '../../home/driver_client/home_page.dart';
import '../../utils/colors.dart';
import '../authentication_tab_pages/car_info_tab.dart';
import '../home_app_bar/page_app_bar.dart';

class CarTabPage extends StatefulWidget {
  const CarTabPage({Key? key}) : super(key: key);

  @override
  State<CarTabPage> createState() => _CarTabPageState();
}

class _CarTabPageState extends State<CarTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Ma'limot kiritish",
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.all(20.0),
                // child: Image.asset("images/logo_taxi.png"),
              ),
              const SizedBox(height: 10),
              Text(
                "Avtomobil ma'lumotlarni kiritish",
                style: TextStyle(
                  fontSize: 26,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Container(
                child: TextFormField(
                  decoration: ThemeHelper().textInputDecoration('Avtomobil raqami *', '01 A777AA'),
                ),
                decoration: ThemeHelper().inputBoxDecorationShaddow(),
              ),
              SizedBox(height: 30),
              Container(
                child: TextFormField(
                  decoration: ThemeHelper().textInputDecoration('Texnik pasport seria raqami *', 'AAF 1234567'),
                ),
                decoration: ThemeHelper().inputBoxDecorationShaddow(),
              ),
              SizedBox(height: 20.0),
              Container(
                child: TextFormField(
                  decoration: ThemeHelper().textInputDecoration('Username', 'Username'),
                ),
                decoration: ThemeHelper().inputBoxDecorationShaddow(),
              ),
              SizedBox(height: 20.0),
              Text(
                "Haydovchi bo'lib ro'yxattan otish uchun avtomobil ma'lumotlarini kiritishingiz shart!",
                style: TextStyle(
                  fontSize: 10,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),

              ElevatedButton(
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (c) => CarInfoScreen()));
                },
                style: ElevatedButton.styleFrom(
                    primary: AppColors.mainTextColor
                ),
                child: const Text(
                  "Avtomobil ma'lumotlarni kiritish",
                  style: TextStyle(color: Color(0xFF455A64), fontSize: 18),
                ),
              ),

              const SizedBox(height: 20,),

              TextButton(
                  child: const Text(
                    "Kirish",
                    style: TextStyle(color: Color(0xFF455A64)),
                  ),
                  onPressed: ()
                  {
                    // Navigator.push(context, MaterialPageRoute(builder: (c) => MainScreen()));
                    Navigator.push(context, MaterialPageRoute(builder: (c) => DriverClientHome()));
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}

