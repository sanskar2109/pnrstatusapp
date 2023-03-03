import 'package:flutter/material.dart';

import 'package:pnrstatus/userlogin.dart';
class getStart extends StatefulWidget{
  const getStart({Key? key}):super(key: key);

  @override
  State<StatefulWidget> createState() => _getStartState();
}
class _getStartState extends State<getStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("PNR STATUS", style: TextStyle(fontSize: 42, fontWeight:
              FontWeight.bold, color: Color.fromARGB(255, 98, 0, 15))),
              Image(image:AssetImage('images/logo.jpg'),height:200,),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 98, 0, 15)
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context){return userLogin();}));
                  },
                  child: const Text("Get Started", style: TextStyle(fontWeight:
                  FontWeight.bold, fontSize: 18,color: Colors.white,)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}