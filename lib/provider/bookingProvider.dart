import 'package:flutter/material.dart';
import 'package:onlineboooking/model/dataModel.dart';

class BookingProvider extends ChangeNotifier {
  TrainModel? t1 ;
  BusModel? b1;
  MovieModel? m1;
  List<BusModel> Bus = [
    BusModel(
      Buslink: "https://www.redbus.in/",
      Busnname: "RED BUS",
      Busphoto: "assets/images/a1.png",
    ),
    BusModel(
      Buslink: "https://gsrtc.in/site/",
      Busnname: "GSRTC",
      Busphoto: "assets/images/a2.jpg",
    ),
    BusModel(
      Buslink: "https://www.abhibus.com/",
      Busnname: "ABHI BUS",
      Busphoto: "assets/images/a3.png",
    ),
    BusModel(
      Buslink: "https://www.yatra.com/bus-booking",
      Busnname: "YATRA",
      Busphoto: "assets/images/a4.png",
    ),
    BusModel(
      Buslink:
      "https://www.zingbus.com/bus-tickets/hyderabad-to-vijayawada-bus-route?gclid=EAIaIQobChMI3fyn8YC6-gIVRZJmAh3mXQO1EAAYASAAEgIWH_D_BwE",
      Busnname: "ZING BUS",
      Busphoto: "assets/images/a5.webp",
    ),
    BusModel(
      Buslink: "https://www.gogobus.in/",
      Busnname: "GOGO BUS",
      Busphoto: "assets/images/a6.png",
    ),
  ];
  List<MovieModel> Movie = [
    MovieModel(
      Movielink: "https://in.bookmyshow.com/",
      Movienname: "Book My Show",
      Moviephoto: "assets/images/movie1.png",
    ),
    MovieModel(
      Movielink: "https://www.ticketnew.com/",
      Movienname: "Ticket New",
      Moviephoto: "assets/images/movie2.jpg",
    ),
    MovieModel(
      Movielink: "https://www.inoxmovies.com/",
      Movienname: "Inox Surat",
      Moviephoto: "assets/images/movie3.png",
    ),
    MovieModel(
      Movielink: "https://www.pvrcinemas.com/",
      Movienname: "PVR",
      Moviephoto: "assets/images/movie4.png",
    ),
    MovieModel(
      Movielink: "https://www.cinepolisindia.com/",
      Movienname: "CINEPOLIS",
      Moviephoto: "assets/images/movie5.webp",
    ),
    MovieModel(
      Movielink: "https://www.justdial.com/streaming",
      Movienname: "JUST DIAL",
      Moviephoto: "assets/images/movie6.jpg",
    ),
  ];
  List<TrainModel> Train = [
    TrainModel(
      Trainlink: "https://www.irctc.co.in/nget/train-search",
      Trainname: "IRCTC",
      Trainphoto: "assets/images/p1.png",
    ),
    TrainModel(
      Trainlink: "https://www.confirmtkt.com/",
      Trainname: "CONFIRMTKT",
      Trainphoto: "assets/images/p2.png",
    ),
    TrainModel(
      Trainlink: "https://www.railyatri.in/",
      Trainname: "RAILYATRI",
      Trainphoto: "assets/images/p3.png",
    ),
    TrainModel(
      Trainlink: "https://www.ixigo.com/trains",
      Trainname: "IXIGO",
      Trainphoto: "assets/images/p4.jpg",
    ),
    TrainModel(
      Trainlink: "https://www.easemytrip.com/railways/",
      Trainname: "EASY MY TRIP",
      Trainphoto: "assets/images/p5.jpg",
    ),
    TrainModel(
      Trainlink: "https://www.trainman.in/",
      Trainname: "TRAIN MAN",
      Trainphoto: "assets/images/p6.jpg",
    ),
  ];
  void Traindata(TrainModel t2)
  {
    t1 = t2;
    notifyListeners();
  }
  void BusData(BusModel b2)
  {
    b1 = b2;
    notifyListeners();
  }
  void MovieDta(MovieModel m2)
  {
    m1 = m2;
    notifyListeners();
  }
}
