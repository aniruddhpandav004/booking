import 'package:flutter/material.dart';
import 'package:onlineboooking/model/dataModel.dart';
import 'package:onlineboooking/provider/bookingProvider.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Train extends StatefulWidget {
  const Train({Key? key}) : super(key: key);

  @override
  State<Train> createState() => _TrainState();
}

class _TrainState extends State<Train> {
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
        itemCount: _bookingProviderFalse!.Train.length,
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
                    "${_bookingProviderFalse!.Train[index].Trainphoto}",
                    height: 80,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Text(
                  //   "${_bookingProviderFalse!.Train[index].Trainname}",
                  //   style: TextStyle(
                  //       fontSize: 15, fontWeight: FontWeight.bold),
                  // ),
                  TextButton(
                      onPressed: () {
                        _bookingProviderFalse!.Traindata(TrainModel(
                            Trainlink:
                                _bookingProviderFalse!.Train[index].Trainlink,
                          Trainname: _bookingProviderFalse!.Train[index].Trainname),);
                        Navigator.pushNamed(context, 'trainweb');
                      },
                      child: Text(
                          "${_bookingProviderFalse!.Train[index].Trainname}",style: TextStyle(color: Colors.black),)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
