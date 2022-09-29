import 'package:flutter/material.dart';
import 'package:onlineboooking/view/bookingScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => OnlineBooking(),
      },
    ),
  );
}
