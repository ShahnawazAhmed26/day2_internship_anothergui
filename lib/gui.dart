import 'package:flutter/material.dart';

class chalktalk extends StatefulWidget {
  const chalktalk({super.key});

  @override
  State<chalktalk> createState() => _chalktalkState();
}

class _chalktalkState extends State<chalktalk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: Row(
            children:[
                Text(
                'My Booked Session',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    
                    fontSize: 24
                    ),
              ),

              SizedBox(width: 60,),
              Text("Sessions : 2"),
              
            ],
           ),
           backgroundColor: const Color.fromARGB(255, 255, 255, 255),


           
           
        ),

        body:  Container(
          child: Stack(
            children: [
              SizedBox(
                width: 400,
                height: 200,
                child: 
                Card(
                  color: Colors.white,
                  child:Stack (
                    children: [

                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Stack(
                              children: [
                             SizedBox(
                              width: 200,
                              height: 200,
                               child: Image(image: AssetImage('assets/bakcground.jpg'),
                               ),
                             ),
                              ]
                             ),
                                            
                          ),
                        ],
                      ),
                      Column(),
                    ],
                  ),
                  
                  
                ),
                ),
            ],
          ),
        ),
    );
    
  }
}





