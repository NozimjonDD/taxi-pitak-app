import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'driver_application_create_tab.dart';

class DriverNotActiveApplicationWidget extends StatelessWidget {
  const DriverNotActiveApplicationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: AppColors.backgroundColor,
                  blurRadius: 5,
                  offset: Offset(2, 0))
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            "Sizda hozirda yo'nalish bo'yicha aktiv e'lon yo'q, qo'shish uchun quidagi tugma orqali qo'shishingiz mumkin!",
            style: TextStyle(color: AppColors.textColor, fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),

        ElevatedButton(
          onPressed: ()
          {
            // Navigator.push(context, MaterialPageRoute(builder: (c) => MainScreen()));
            Navigator.push(context, MaterialPageRoute(builder: (c) => DriverApplicationCreate()));
          },
          style: ElevatedButton.styleFrom(
              primary: AppColors.iconColor2
          ),
          child: Text(
            "Qo'shish",
            style: TextStyle(color: AppColors.textColor, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),

      ],
    );
  }
}
