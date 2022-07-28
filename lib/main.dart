import 'package:e_commerce_full/pages/home/home_page_index.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // backgroundColor: primary,
          fontFamily: 'Poppins'),
      home: HomePageIndex(),
    ),
  );
}
