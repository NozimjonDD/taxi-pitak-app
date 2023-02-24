import 'package:flutter/material.dart';
import 'package:taxi_pitak_app/utils/colors.dart';

import '../../common/theme_helper.dart';
import '../../home/driver_client/home_page.dart';
import 'car_info_tab.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                // child: Image.asset("images/logo_taxi.png"),
              ),

              const SizedBox(
                height: 10,
              ),

              Text(
                "Ma'lumotlarni kiritish",
                style: TextStyle(
                  fontSize: 26,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 30,),
              Container(
                child: TextFormField(
                  decoration: ThemeHelper().textInputDecoration('Ism', 'Ism'),
                ),
                decoration: ThemeHelper().inputBoxDecorationShaddow(),
              ),
              SizedBox(height: 30,),
              Container(
                child: TextFormField(
                  decoration: ThemeHelper().textInputDecoration('Familya', 'Familya'),
                ),
                decoration: ThemeHelper().inputBoxDecorationShaddow(),
              ),
              SizedBox(height: 20.0),
              Container(
                child: TextFormField(
                  decoration: ThemeHelper().textInputDecoration("E-mail address", "Ozingizga tegishli email"),
                  keyboardType: TextInputType.emailAddress,
                  validator: (val) {
                    if(!(val!.isEmpty) && !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$").hasMatch(val)){
                      return "Enter a valid email address";
                    }
                    return null;
                  },
                ),
                decoration: ThemeHelper().inputBoxDecorationShaddow(),
              ),
              SizedBox(height: 20.0),
              Container(
                child: TextFormField(
                  decoration: ThemeHelper().textInputDecoration(
                      "Telefon raqamingiz",
                      "Ozingizga tegishli telefon qaram"),
                  keyboardType: TextInputType.phone,
                  validator: (val) {
                    if(!(val!.isEmpty) && !RegExp(r"^(\d+)*$").hasMatch(val)){
                      return "Enter a valid phone number";
                    }
                    return null;
                  },
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
              Container(
                child: TextFormField(
                  obscureText: true,
                  decoration: ThemeHelper().textInputDecoration(
                      "Parol*", "Parol"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please enter your password";
                    }
                    return null;
                  },
                ),
                decoration: ThemeHelper().inputBoxDecorationShaddow(),
              ),

              SizedBox(height: 20),

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
                    "Rrish",
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
