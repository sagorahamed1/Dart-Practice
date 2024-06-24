import 'package:flutter/material.dart';

void main(){
  double doubleNumber  = 11.35541;

  ///---------------double.ceil() can double to up number int ------------->
  int celiNumber = doubleNumber.ceil();
  print("==> $celiNumber");

  ///---------------double.floor() can double to down number int----------->
  int floorNumber =doubleNumber.floor();
  print("===>  dd: $floorNumber");


  int intNumber = doubleNumber ~/ 2;
  print("===> $intNumber");

  ///----------------avoid unnecessary double number---------------------->
  String number = (10.14145454245).toStringAsFixed(2);
  print("===> number : $number and runTimeType : ${number.runtimeType}");




}
