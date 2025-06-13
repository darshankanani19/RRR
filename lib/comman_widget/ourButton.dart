// import 'package:flutter/cupertino.dart';
import 'package:project_management/consts/const.dart';
import 'package:project_management/generated/assets.dart';
Widget ourButton({required String text,onPress,color,textColor,textSize=12}){
return SizedBox(
  child: ElevatedButton(
      style: ElevatedButton.styleFrom(

        backgroundColor: color,
        padding: EdgeInsets.all(12),
        foregroundColor: textColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),


      ),
      onPressed: onPress,
      child: text.text.color(textColor).fontFamily(bold).align(TextAlign.center).size(textSize).make()),
);
}