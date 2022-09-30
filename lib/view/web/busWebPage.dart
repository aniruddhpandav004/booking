import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../provider/bookingProvider.dart';

class BusWeb extends StatefulWidget {
  const BusWeb({Key? key}) : super(key: key);

  @override
  State<BusWeb> createState() => _BusWebState();
}

class _BusWebState extends State<BusWeb> {
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
          title: Text("${_bookingProviderFalse!.b1!.Busnname}",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
        ),
        body: WebView(
          initialUrl: "${_bookingProviderFalse!.b1!.Buslink}",
        ),
      ),
    );
  }
}
