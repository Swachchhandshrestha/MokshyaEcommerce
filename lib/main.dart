import 'package:flutter/material.dart';
import './pages/login.dart';

void main()
{
  runApp(MaterialApp(
    theme:ThemeData(
    primaryColor: Colors.deepPurple,
    ),
    debugShowCheckedModeBanner: false,
    home: Login(),
  ),);
}
