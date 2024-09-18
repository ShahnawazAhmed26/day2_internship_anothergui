import 'package:flutter/material.dart';

class ChalkTalk extends StatefulWidget {
  const ChalkTalk({super.key});

  @override
  State<ChalkTalk> createState() => _ChalkTalkState();
}

class _ChalkTalkState extends State<ChalkTalk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Booked Session',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              "Sessions: 2",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0), // Added padding to prevent overflow
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0), // Added padding for aesthetics
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 3,
                        child: SizedBox(
                          height: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/bakcground.jpg', // Corrected the path
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10), // Space between image and text
                      Flexible(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                "Living Maths Grade 4-5",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(Icons.person, size: 20),
                                SizedBox(width: 4),
                                Text(
                                  "By : Steve Sherman",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(Icons.timeline, size: 20),
                                SizedBox(width: 4),
                                Text(
                                  "Total Sessions : 1",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(Icons.calendar_today, size: 20),
                                SizedBox(width: 4),
                                Text(
                                  "12th May 2025",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Space between the Row and the bottom text
                  Center(
                    child: Text(
                      "Learn Maths in a way like never before",
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.more_horiz, size: 25),
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(

                                  width: double.infinity, 
                                  height: double.infinity,
                                  child: Card(
                                    margin: EdgeInsets.all(16.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'Details',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Divider(color: Colors.grey,),
                                          SizedBox(height: 20),

                                         Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Aligns children to the start of the column
              children: [
                Row(
                  children: [
                    
                    Icon(
                      Icons.currency_bitcoin,
                      size: 24, // Size of the icon
                    ),
                    SizedBox(width: 16), // Width of the gap between the icon and text
                    Text(
                      'Fee: 200\$',
                      style: TextStyle(fontSize: 18), // Style of the text
                    ),
                  ],
                ),

                Divider(color: Colors.red,),
                SizedBox(height: 20), // Space between rows
                Row(
                  children: [
                    Icon(
                      Icons.alarm,
                      size: 24, // Size of the icon
                    ),
                    SizedBox(width: 16), // Width of the gap between the icon and text
                    Text(
                      'Timings :  11am to 2pm',
                      style: TextStyle(fontSize: 18), // Style of the text
                    ),
                  ],
                ),
                Divider(color: Colors.red,),
                SizedBox(height: 20), // Space between rows
                Row(
                  children: [
                    Icon(
                      Icons.date_range,
                      size: 24, // Size of the icon
                    ),
                    SizedBox(width: 16), // Width of the gap between the icon and text
                    Text(
                      'Days : Saturday and Sunday',
                      style: TextStyle(fontSize: 18), // Style of the text
                    ),
                  ],
                ),
                Divider(color: Colors.red,),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: ))
                  },
                  child: Text("Book Now !")
                )
              ],

              
            ),

                                          
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
