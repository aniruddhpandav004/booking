import 'package:flutter/material.dart';

class Train extends StatefulWidget {
  const Train({Key? key}) : super(key: key);

  @override
  State<Train> createState() => _TrainState();
}

class _TrainState extends State<Train> {
  List image = [
    "assets/images/p1.png",
    "assets/images/p2.png",
    "assets/images/p3.png",
  ];
  List name = [
    "IRCTC",
    "CONFIRMTKT",
    "RAILYATRI",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: image.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffE9E9E9),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "${image[index]}",
                      height: 150,
                      width: 150,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "${name[index]}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
