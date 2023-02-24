import 'package:flutter/material.dart';
import 'package:taxi_pitak_app/utils/colors.dart';
import 'package:taxi_pitak_app/utils/dimensions.dart';
import 'package:taxi_pitak_app/widgets/authentication_tab_pages/signup_tab.dart';

import '../../common/theme_helper.dart';
import '../../home/driver_client/home_page.dart';
import '../../home/driver_client/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                // child: Image.asset("images/logo_taxi.png"),
              ),

              Text(
                "Profilga krish",
                style: TextStyle(
                    fontSize: 25,
                    color: AppColors.textColor,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 45),

              Container(
                child: TextField(
                  decoration: ThemeHelper().textInputDecoration('User Name', 'O`zingizga tegishli user name'),
                ),
                decoration: ThemeHelper().inputBoxDecorationShaddow(),
              ),
              SizedBox(height: 30.0),
              Container(
                child: TextField(
                  obscureText: true,
                  decoration: ThemeHelper().textInputDecoration('Parol', 'O`zingizga tegishli parol'),
                ),
                decoration: ThemeHelper().inputBoxDecorationShaddow(),
              ),
              SizedBox(height: 15.0),


              const SizedBox(height: 50,),

              ElevatedButton(
                onPressed: ()
                {
                  // Navigator.push(context, MaterialPageRoute(builder: (c) => MainScreen()));
                  Navigator.push(context, MaterialPageRoute(builder: (c) => DriverClientHome()));
                },
                style: ElevatedButton.styleFrom(
                    primary: AppColors.mainTextColor
                ),
                child: const Text(
                  "Kirish",
                  style: TextStyle(color: Color(0xFF455A64), fontSize: 18),
                ),
              ),

              const SizedBox(height: 20,),

              TextButton(
                  child: const Text(
                    "Ro'yxattan o'tish",
                    style: TextStyle(color: Color(0xFF455A64)),
                  ),
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (c) => SignUpScreen()));
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
