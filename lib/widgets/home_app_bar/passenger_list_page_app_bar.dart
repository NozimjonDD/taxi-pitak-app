import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class PassengerListPageAppBar extends StatelessWidget {
  const PassengerListPageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  // goes back to previous screen
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: AppColors.textColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Cart",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textColor,
                  ),
                ),
              ),
              Spacer(),
              Icon(
                Icons.more_vert,
                size: 30,
                color: AppColors.textColor,
              )
            ],
          ),
          SizedBox(height: 10),
          Container(
            // child: TextField(
            //   decoration: InputDecoration(
            //     prefixIcon: Icon(Icons.search),
            //     border: OutlineInputBorder(),
            //     hintText: 'Search Tech Talk',
            //   ),
            // ),

            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "Izlash",
                  fillColor: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }
}

