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
              'Appointments',
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
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
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
                              'assets/bakcground.jpg', // Ensure correct path
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Living Maths Grade 4 - 5",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Learn Maths in a way like never before",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: IconButton(
                                icon: Icon(Icons.more_horiz, size: 25),
                                onPressed: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SizedBox(
                                        width: double.infinity,
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
                                                Divider(color: Colors.grey),
                                                SizedBox(height: 20),
                                                Row(
                                                  children: [
                                                    Icon(Icons.date_range, size: 24, color: Colors.blue),
                                                    SizedBox(width: 16),
                                                    Text(
                                                      'Date: 12 May 2025',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w500,
                                                        color: Colors.black87,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Divider(color: Colors.grey.shade300, thickness: 1),
                                                Row(
                                                  children: [
                                                    Icon(Icons.access_time, size: 24, color: Colors.orange),
                                                    SizedBox(width: 16),
                                                    Text(
                                                      'Timings: 11am to 2pm',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w500,
                                                        color: Colors.black87,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Divider(color: Colors.grey.shade300, thickness: 1),
                                                Row(
                                                  children: [
                                                    Icon(Icons.calendar_today, size: 24, color: Colors.green),
                                                    SizedBox(width: 16),
                                                    Text(
                                                      'Days: Saturday and Sunday',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w500,
                                                        color: Colors.black87,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Divider(color: Colors.grey.shade300, thickness: 1),
                                                Row(
                                                  children: [
                                                    Icon(Icons.person, size: 24, color: Colors.purple),
                                                    SizedBox(width: 16),
                                                    Text(
                                                      'Instructor: Steve Sherman',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w500,
                                                        color: Colors.black87,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Divider(color: Colors.grey.shade300, thickness: 1),
                                                Row(
                                                  children: [
                                                    Icon(Icons.attach_money, size: 24, color: Colors.red),
                                                    SizedBox(width: 16),
                                                    Text(
                                                      'Fee: 200\$', 
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w500,
                                                        color: Colors.black87,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Divider(color: Colors.grey.shade300, thickness: 1),
                                                Row(
                                                  children: [
                                                    Icon(Icons.event_note, size: 24, color: Colors.teal),
                                                    SizedBox(width: 16),
                                                    Text(
                                                      'Total Sessions: 1',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w500,
                                                        color: Colors.black87,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 20),
                                                ElevatedButton(
                                                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                                                  onPressed: () {},
                                                  child: Text("Book Now!"),
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
                            ),
                          ],
                        ),
                      ),
                    ],
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
