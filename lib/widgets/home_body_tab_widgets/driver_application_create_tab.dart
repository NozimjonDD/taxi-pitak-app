import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:taxi_pitak_app/common/theme_helper.dart';
import 'package:taxi_pitak_app/utils/colors.dart';

import '../../common/date_time_select_widget.dart';
import '../../common/input_select_widgets.dart';
import '../../home/driver_client/home_page.dart';
import 'driver_application_activ_tab.dart';

class DriverApplicationCreate extends StatefulWidget {
  const DriverApplicationCreate({Key? key}) : super(key: key);

  @override
  State<DriverApplicationCreate> createState() =>
      _DriverApplicationCreateState();
}

class _DriverApplicationCreateState extends State<DriverApplicationCreate> {

  var regions = [
    'Toshkent',
    'Buxoro',
    'Samarqand',
    'Jizzax',
    'Qashqadaryo',
    'Sirdaryo',
    'Xorazm',
    'Nukus',
    'Surxandaryo',
    'Namangan',
    'Andijon',
    'Fargona'
  ];
  var districts = [
    'Olmazor',
    'Sergili',
    'Chilonzor',
    'Yunusobod',
    'Mirzo-Ulug`bek',
    'Chinoz',
    'Buxoro shahar',
    'G`ijduvon',
    'Uchquduq',
    'Kattaqorg`on',
  ];
  bool isSwitched = false;
  var foo = 42;

  DateTime date = DateTime.now();

  // String dropdownValue = 'Dog';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.buttonBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                child: Text(
                  "O'zingiz uchun A punktan B punktga yo'nalish qo'shing.",
                  style: TextStyle(
                      fontSize: 17,
                      color: AppColors.textColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 40),
              Text("qaysi viloyatdan yurishni boshlamoqchisi"),
              InputSelectList(items: regions),
              SizedBox(height: 20),
              Text("qaysi tumandan yurishni boshlamoqchisi"),
              InputSelectList(items: districts),
              SizedBox(height: 20),

              Text("qaysi viloyatga boshingiz"),
              InputSelectList(items: regions),
              SizedBox(height: 20),
              Text("qaysi tumangacha borishingiz"),
              InputSelectList(items: districts),
              SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 40,
                    child: TextFormField(
                      decoration: ThemeHelper().textInputDecoration("yo'l haqi *", "100.000"),
                    ),
                    decoration: ThemeHelper().inputBoxDecorationShaddow(),
                  ),
                  SizedBox(width: 10),
                  Container(
                      width: 150,
                      height: 40,
                      child: TextFormField(
                          decoration: ThemeHelper().textInputDecoration("yo'lovchilar soni *", "__")),

                      decoration: ThemeHelper().inputBoxDecorationShaddow()

                  ),
                ],
              ),
              SizedBox(height: 30),

              // Sanalar chiqis-kirish
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "chiqish",
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.bold),
                      ),

                      TextButton(
                          onPressed: () {
                            DatePicker.showDatePicker(context,
                                showTitleActions: true,
                                minTime: DateTime.now(),
                                maxTime: DateTime(2150, 6, 7),
                                onChanged: (date) {
                              print('change $date');
                            }, onConfirm: (date) {
                              print('confirm $date');
                            }, currentTime: DateTime.now(),
                                locale: LocaleType.en);
                          },
                          child: Container(
                            child: Text(
                              '2023-02-23. 22:00',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ))

                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text(
                        "yetib borish",
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.bold),
                      ),

                      TextButton(
                          onPressed: () {
                            DatePicker.showDatePicker(context,
                                showTitleActions: true,
                                minTime: DateTime.now(),
                                maxTime: DateTime(2150, 6, 7),
                                onChanged: (date) {
                              print('change $date');
                            }, onConfirm: (date) {
                              print('confirm $date');
                            }, currentTime: DateTime.now(),
                                locale: LocaleType.en);
                          },
                          child: Container(
                            child: Text(
                              '2023-02-23. 06:00',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ))

                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 90,
                    child: Column(
                      children: <Widget>[
                        if (isSwitched) Text(
                          "Pochta: bor",
                          style: TextStyle(
                              fontSize: 14,
                              color: AppColors.textColor,
                              fontWeight: FontWeight.bold),
                        )else Text(
                          "Pochta: yo'q",
                          style: TextStyle(
                              fontSize: 14,
                              color: AppColors.textColor,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                                print(isSwitched);
                              });
                            },
                            activeTrackColor: AppColors.textColor,
                            activeColor: AppColors.backgroundColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 30),
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
                      "Qo'shish",
                      style: TextStyle(color: Color(0xFF455A64), fontSize: 18),
                    ),
                  ),
                ],
              )





            ],
          ),
        ),
      ),
    );
  }
}
