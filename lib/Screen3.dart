import 'package:pnrstatus/Screen4.dart';
import 'package:flutter/material.dart';
import 'package:pnrstatus/left_bar.dart';
import 'package:pnrstatus/Right_bar.dart';

class TraningCompletion extends StatelessWidget {
  String title = '';
  TraningCompletion({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Center(
                child: Column(children: [
                  SizedBox(height: 10,),
                  Text("Hi,$title",style: TextStyle(fontSize: 22),),
                  SizedBox(height: 20,),
                  const Text("Welcome to PNR Status", style: TextStyle(fontSize: 28, fontWeight:
                  FontWeight.bold, color: Color.fromARGB(255, 245, 7, 63))),
                  const SizedBox(
                    height: 50,
                  ),
                  const TextField(
                      keyboardType: TextInputType.number,

                      decoration: InputDecoration(
                          hintText: " Enter PNR Number",
                          hintStyle: TextStyle(fontSize: 18),
                          border: UnderlineInputBorder(),
                          icon: Icon(Icons.numbers, color: Colors.black54,)
                      )
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                      width: 150,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 0, 98, 31)
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:
                              (context){return Screen4();}));
                        },
                        child: const Text("Check", style: TextStyle(fontWeight:
                        FontWeight.bold, fontSize: 22,color: Colors.white,)),
                      )


                  ),
                    SizedBox(height: 20,),
                    const SizedBox(height: 10,),
                      const LeftBar(barWidth: 40,),
                        const SizedBox(height: 10,),
                      const LeftBar(barWidth: 70),
                       const SizedBox(height: 10,),
                        const LeftBar(barWidth: 40,),
                  SizedBox(height: 20,),
                              const SizedBox(height: 10,),
                              const RightBar(barWidth: 40),
                             const SizedBox(height: 10,),
                          const RightBar(barWidth: 70),
                           const SizedBox(height:10),
                  const RightBar(barWidth: 40,),

                  SizedBox(height: 100,),


                           const Center(
                            child: Text(
                               "Developed By:Sanskar Singhal",
                             style: TextStyle(
                                fontSize: 15,
                               fontWeight: FontWeight.w400,
                             color: Colors.black))),



                ]
                            ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
