import 'package:flutter/material.dart';
import 'package:shakh_app/Gradient_Container.dart';

const startAlignment = Alignment.bottomRight;
const endAlignment = Alignment.topLeft;

void main(){
  
  runApp(
    MaterialApp(
home:Scaffold(
  body:  GradientContainer(),
)
    )
  );
}