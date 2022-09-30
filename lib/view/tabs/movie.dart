import 'package:flutter/material.dart';
import 'package:onlineboooking/model/dataModel.dart';
import 'package:onlineboooking/provider/bookingProvider.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Movie extends StatefulWidget {
  const Movie({Key? key}) : super(key: key);

  @override
  State<Movie> createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  BookingProvider? _bookingProviderTrue;
  BookingProvider? _bookingProviderFalse;

  @override
  Widget build(BuildContext context) {
    _bookingProviderFalse =
        Provider.of<BookingProvider>(context, listen: false);
    _bookingProviderTrue = Provider.of<BookingProvider>(context, listen: true);
    return Scaffold(
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _bookingProviderFalse!.Movie.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white10,
                border: Border.all(width: 2),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "${_bookingProviderFalse!.Movie[index].Moviephoto}",
                      height: 80,
                      width: 90,
                    ),
                    TextButton(
                        onPressed: () {
                          _bookingProviderFalse!.MovieDta(
                            MovieModel(
                                Movielink: _bookingProviderFalse!
                                    .Movie[index].Movielink,
                                Movienname: _bookingProviderFalse!
                                    .Movie[index].Movienname),
                          );
                          Navigator.pushNamed(context, 'movieweb');
                        },
                        child: Text(
                            "${_bookingProviderFalse!.Movie[index].Movienname}",style: TextStyle(color: Colors.black),)),
                  ]),
            ),
          );
        },
      ),
    );
  }
}
