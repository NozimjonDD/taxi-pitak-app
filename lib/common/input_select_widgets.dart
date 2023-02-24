import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:taxi_pitak_app/utils/colors.dart';

// class InputSelectList extends StatelessWidget {
//   late final String dropdownvalue;
//   final items;
//
//   InputSelectList({Key? key, required this.dropdownvalue, this.items})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: 40,
//         padding: EdgeInsets.all(5.0),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20.0),
//           border: Border.all(
//               color: Colors.black.withOpacity(0.1),
//               style: BorderStyle.solid,
//               width: 1.80),
//         ),
//         child: DropdownButtonHideUnderline(
//           child: DropdownButton2(
//             items: items
//                 .map((item) => DropdownMenuItem<String>(
//                       value: item,
//                       child: Text(item, style: const TextStyle(fontSize: 14)),
//                     ))
//                 .toList(),
//             value: dropdownvalue,
//             onChanged: (String? newValue) {
//               setState(() {
//                 dropdownvalue = newValue!;
//               });
//             },
//             buttonHeight: 140,
//             buttonWidth: 540,
//             itemHeight: 40,
//           ),
//         ));
//   }
// }

class InputSelectList extends StatefulWidget {
  final items;

  const InputSelectList({Key? key, required this.items})
      : super(key: key);

  @override
  State<InputSelectList> createState() => _InputSelectListState();
}

class _InputSelectListState extends State<InputSelectList> {
  late String dropdownvalue;
  late List items;
  @override
  void initState(){
    super.initState();
    dropdownvalue= widget.items[0];
    items = widget.items;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
              color: AppColors.backgroundColor,
              style: BorderStyle.solid,
              width: 1.80),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton2(
            items: items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(item, style: const TextStyle(fontSize: 14)),
                    ))
                .toList(),
            value: dropdownvalue,
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            },
            buttonHeight: 140,
            buttonWidth: 540,
            itemHeight: 40,
          ),
        ));
  }
}
