import 'package:flutter/material.dart';

import '../../home/driver_client/main_screen.dart';
import '../../utils/colors.dart';

class CarInfoScreen extends StatefulWidget {
  @override
  State<CarInfoScreen> createState() => _CarInfoScreenState();
}

class _CarInfoScreenState extends State<CarInfoScreen>
{

  TextEditingController carModelTextEditingController = TextEditingController();
  TextEditingController carNumberTextEditingController = TextEditingController();
  TextEditingController carColorTextEditingController = TextEditingController();

  List<String> carTypesList = ["uber-x", "uber-go", "bike"];
  String? selectedCarType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [

              const SizedBox(height: 24.0,),

              Padding(
                  padding: const EdgeInsets.all(20.0),
                  // child: Image.asset("images/logo_taxi.png"),
              ),

              const SizedBox(height: 10,),

              const Text(
                "Write Car Details",
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xFF455A64),
                  fontWeight: FontWeight.bold,
                ),
              ),

              TextField(
                controller: carModelTextEditingController,
                style: const TextStyle(color: Color(0xFF455A64)),
                decoration: const InputDecoration(
                  labelText: "Car Model",
                  hintText: "Car Model",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF455A64))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF455A64))),
                  hintStyle: TextStyle(
                    color: Color(0xFF455A64),
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Color(0xFF455A64),
                    fontSize: 10,
                  ),
                ),
              ),

              TextField(
                controller: carNumberTextEditingController,
                style: const TextStyle(color: Color(0xFF455A64)),
                decoration: const InputDecoration(
                  labelText: "Car Number",
                  hintText: "Car Number",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF455A64))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF455A64))),
                  hintStyle: TextStyle(
                    color: Color(0xFF455A64),
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Color(0xFF455A64),
                    fontSize: 10,
                  ),
                ),
              ),

              TextField(
                controller: carColorTextEditingController,
                style: const TextStyle(color: Color(0xFF455A64)),
                decoration: const InputDecoration(
                  labelText: "Car Color",
                  hintText: "Car Color",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF455A64))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF455A64))),
                  hintStyle: TextStyle(
                    color: Color(0xFF455A64),
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Color(0xFF455A64),
                    fontSize: 10,
                  ),
                ),
              ),

              const SizedBox(height: 10,),

              DropdownButton(
                iconSize: 30,
                dropdownColor: Colors.white,
                hint: const Text(
                    "Please choose Car Type",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFF455A64)
                    ),
                  ),
                value: selectedCarType,
                onChanged: (newValue)
                {
                  setState(() {
                    selectedCarType = newValue.toString();
                  });
                },
                items: carTypesList.map((car){
                  return DropdownMenuItem(
                      child:Text(
                        car,
                        style: TextStyle(color: Color(0xFF455A64)),
                      ),
                    value: car,

                  );
                }).toList()
              ),

              const SizedBox(height: 20,),

              ElevatedButton(
                onPressed: ()
                {
                  // Navigator.push(context, MaterialPageRoute(builder: (c) => MainScreen()));
                },
                style: ElevatedButton.styleFrom(
                    primary: AppColors.mainColor
                ),
                child: const Text(
                  "Create Account",
                  style: TextStyle(color: Color(0xFF455A64), fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
