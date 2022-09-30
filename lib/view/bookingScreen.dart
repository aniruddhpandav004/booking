import 'package:flutter/material.dart';
import 'package:onlineboooking/view/tabs/bus.dart';
import 'package:onlineboooking/view/tabs/movie.dart';
import 'package:onlineboooking/view/tabs/train.dart';

class OnlineBooking extends StatefulWidget {
  const OnlineBooking({Key? key}) : super(key: key);

  @override
  State<OnlineBooking> createState() => _OnlineBookingState();
}

class _OnlineBookingState extends State<OnlineBooking> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "All in One Online Booking",
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Color(0xffFEBF75),
            elevation: 1,
            bottom: TabBar(
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.train,
                    color: Colors.black,
                  ),iconMargin: EdgeInsets.all(10),
                  child: Text(
                    "TRAIN",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.directions_bus,
                    color: Colors.black,
                  ),
                  iconMargin: EdgeInsets.all(10),
                  child: Text(
                    "BUS",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.movie,
                    color: Colors.black,
                  ),iconMargin: EdgeInsets.all(10),
                  child: Text(
                    "MOVIE",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Train(),
              Bus(),
              Movie(),
            ],
          ),
        ),
      ),
    );
  }
}
