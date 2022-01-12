import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Challenge(),
  ));
}

class Challenge extends StatelessWidget {
  const Challenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Row(
            children: [
              Container(
                width: 90,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          color: Colors.blue[300],
                          height: 120,
                          width: 90,
                          child: Wrap(
                            direction: Axis.vertical,
                            alignment: WrapAlignment.end,
                            children: [
                              Container(
                                color: Colors.grey,
                                width: 30,
                                height: 30,
                              ),
                              Container(
                                color: Colors.orange,
                                width: 30,
                                height: 30,
                              ),
                              Container(
                                color: Colors.blue[700],
                                width: 30,
                                height: 30,
                              ),
                              Container(
                                color: Colors.pink[400],
                                width: 30,
                                height: 30,
                              ),
                              Container(
                                color: Colors.green,
                                width: 30,
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            color: Colors.yellow,
                            width: 30,
                            height: 30,
                          ),
                        )
                      ],
                    ),
                    Expanded(
                        child: Container(
                      color: Colors.black,
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.yellow,
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.white,
                    )),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.pink[400],
                ),
              ),
              Container(
                color: Colors.white,
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.pink[400],
                ),
              ),
            ],
          ),
          Positioned(
            top: size.height / 2 - 10,
            left: 50,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: () {},
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
