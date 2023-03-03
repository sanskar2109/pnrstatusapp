import 'package:flutter/material.dart';
  class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _screen4();
}
class _screen4 extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    children: [
                      Center(
                          child: Column(children: const [
                            SizedBox(height: 10,),
                            Text("wait for some time",
                              style: TextStyle(fontSize: 22),),
                            SizedBox(height: 20,),

                          ]

                          )
                      )
                    ]
                )
            )
        )
    );
  }
}

