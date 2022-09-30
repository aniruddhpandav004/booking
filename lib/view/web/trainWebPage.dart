import 'package:flutter/material.dart';
import 'package:onlineboooking/provider/bookingProvider.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TrainWeb extends StatefulWidget {
  const TrainWeb({Key? key}) : super(key: key);

  @override
  State<TrainWeb> createState() => _TrainWebState();
}

class _TrainWebState extends State<TrainWeb> {
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
          title: Text(
            "${_bookingProviderFalse!.t1!.Trainname}",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: WebView(
          initialUrl: "${_bookingProviderFalse!.t1!.Trainlink}",
        ),
      ),
    );
  }
}
