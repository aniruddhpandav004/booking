
import 'package:flutter/material.dart';
import 'package:onlineboooking/provider/bookingProvider.dart';
import 'package:onlineboooking/view/bookingScreen.dart';
import 'package:onlineboooking/view/spleshScreen.dart';
import 'package:onlineboooking/view/web/busWebPage.dart';
import 'package:onlineboooking/view/web/movieWebPage.dart';
import 'package:onlineboooking/view/web/trainWebPage.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => BookingProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => SpleshScreen(),
          'booking' : (context) => OnlineBooking(),
          'trainweb' : (context) => TrainWeb(),
          'busweb' : (context) => BusWeb(),
          'movieweb' : (context) => MovieWeb(),
        },
      ),
    ),
  );
}
