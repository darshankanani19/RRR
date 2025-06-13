// import 'package:flutter/cupertino.dart';
import 'package:project_management/consts/const.dart';
Widget ButtonIcon({icon,String? title,onPress})=> Column(
    children: [
      Image.asset(icon,height: 80,width: 80,fit: BoxFit.fill,).box.padding(EdgeInsets.all(5)).margin(EdgeInsets.all(5)).make(),
      title!.text.fontFamily(semibold).size(16).color(Colors.black).make(),
    ],
  ).box.color(Colors.white).rounded.outerShadow.margin(EdgeInsets.symmetric(horizontal: 8)).make().onTap(onPress);