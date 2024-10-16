import 'package:flutter/material.dart';
import 'package:flutter_gamer_mvvm/src/presentation/utils/base_color.dart';

class Postscategory extends StatelessWidget {

  String value;
  String groupValue;
  Function(String value) onChanged;
  String imagePath;

  Postscategory({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.imagePath,    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, top: 15),
      child: Row(
        children: [
          Radio(              
            value: value, 
            groupValue: groupValue, 
            activeColor: BASE_COLOR,
            onChanged: (value) {
              onChanged(value ?? '');
            }
          ),
          Container(
            width: 130,
            child: Text(
              value,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Image.asset(
              imagePath,
              width: 40,
              height: 40,
            ),
          )
        ],
      ),
    );
}
}