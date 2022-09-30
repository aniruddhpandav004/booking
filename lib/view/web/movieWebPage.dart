import 'package:flutter/material.dart';
import 'package:onlineboooking/provider/bookingProvider.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MovieWeb extends StatefulWidget {
  const MovieWeb({Key? key}) : super(key: key);

  @override
  State<MovieWeb> createState() => _MovieWebState();
}

class _MovieWebState extends State<MovieWeb> {
  BookingProvider? _bookingProviderTrue;
  BookingProvider? _bookingProviderFalse;

  @override
  Widget build(BuildContext context) {
    _bookingProviderFalse =
        Provider.of<BookingProvider>(context, listen: false);
    _bookingProviderTrue = Provider.of<BookingProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFEBF75),
          centerTitle: true,
          title: Text(
            "${_bookingProviderFalse!.m1!.Movienname}",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: WebView(
          initialUrl: "${_bookingProviderFalse!.m1!.Movielink}",
        ),
      ),
    );
  }
}
