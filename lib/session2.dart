import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Session Details'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SessionDetailsScreen2(),
        ),
      ),
    );
  }
}

class SessionDetailsScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Session Title
            Text(
              'Living Maths Grade 4 - Grade 5',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            
            // Image and Instructor Name Row
            Row(
              children: [
                // Image Placeholder (Replace with CachedNetworkImage if needed)
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://www.laronde.com/wp-content/uploads/3M-Logo-1.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Steve Sherman',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),

            // Join Session and Session Details Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    // Join session action
                  },
                  child: Text('Join Session'),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.teal),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    // Session details action
                  },
                  child: Text('Session Detail'),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Number of Meetups
            Row(
              children: [
                Icon(Icons.people, size: 20, color: Colors.black54),
                SizedBox(width: 8),
                Text(
                  'No. of Meetups: 1 single',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),

            // Date and Time
            Row(
              children: [
                Icon(Icons.calendar_today, size: 20, color: Colors.black54),
                SizedBox(width: 8),
                Text(
                  'Friday, May 19, 2023',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),

            // Time and Pricing
            Row(
              children: [
                Icon(Icons.access_time, size: 20, color: Colors.black54),
                SizedBox(width: 8),
                Text(
                  '20:00 - 21:00 24hrs',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),

            // Price
            Row(
              children: [
                Icon(Icons.monetization_on, size: 20, color: Colors.green),
                SizedBox(width: 8),
                Text(
                  'No Charges',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
