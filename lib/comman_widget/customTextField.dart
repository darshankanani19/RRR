// import 'package:flutter/cupertino.dart';
import 'package:project_management/consts/const.dart';

Widget customTextfiled({height,textColor,width,String? hint,controller,isPass}){
  return SizedBox(
height: height,
      child: TextFormField(

        obscureText: isPass,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            hintStyle: TextStyle(
              fontFamily: bold,
              color: textColor,
            ),
            hintText: hint,
            isDense: true,
            fillColor: lightCream,
            filled: true,
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Purple,
                )
            )
        ),
        controller: controller,


      ));
}