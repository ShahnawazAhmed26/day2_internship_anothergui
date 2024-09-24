import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SessionDetailsScreen1 extends StatefulWidget {
  @override
  _SessionDetailsScreen1State createState() => _SessionDetailsScreen1State();
}

class _SessionDetailsScreen1State extends State<SessionDetailsScreen1> {
  bool _isGradientChanged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Session Details",
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true, // Center the title without the need for `Center` widget
        elevation: 0,
      ),
      body: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Carousel Slider
              CarouselSlider(
                items: [
                  _buildCarouselItem("https://c4.wallpaperflare.com/wallpaper/825/375/685/dota-2-wallpaper-preview.jpg"),
                  _buildCarouselItem("https://c4.wallpaperflare.com/wallpaper/952/657/195/dota-2-4k-desktop-wallpaper-preview.jpg"),
                  _buildCarouselItem("https://c4.wallpaperflare.com/wallpaper/957/398/569/dota-2-dota-legion-commander-warrior-wallpaper-preview.jpg"),
                ],
                options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
              SizedBox(height: 16),

              // Session Title
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Living Maths Grade 4 - Grade 5',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(height: 8),

              // Instructor and Image
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/pfp.webp'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    'Steve Sherman',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Bottom Details
              BottomCardElements(
                date: 'Friday, May 19, 2023',
                timings: '08:00 - 09:00 24hrs',
                days: 'Single Day',
                instructor: 'Steve Sherman',
                fee: 'No Charges',
                totalSessions: '1',
              ),
              SizedBox(height: 20),

              // Animated Gradient Button
              AnimatedContainer(
                duration: Duration(seconds: 2),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.green, Colors.lightGreen],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent, // Keeps the button's background transparent
                    shadowColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  ),
                  onPressed: () {
                    // Add any functionality here
                  },
                  child: SizedBox(
                    width: 300,
                    child: Center(
                      child: Text(
                        'Book Now!',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16), // Extra spacing for better visual appeal
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCarouselItem(String imageUrl) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class BottomCardElements extends StatelessWidget {
  final String date;
  final String timings;
  final String days;
  final String instructor;
  final String fee;
  final String totalSessions;

  const BottomCardElements({
    Key? key,
    required this.date,
    required this.timings,
    required this.days,
    required this.instructor,
    required this.fee,
    required this.totalSessions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDetailRow(
          icon: Icons.date_range,
          color: Colors.blue,
          title: 'Date',
          detail: date,
        ),
        _buildDetailRow(
          icon: Icons.access_time,
          color: Colors.orange,
          title: 'Timings',
          detail: timings,
        ),
        _buildDetailRow(
          icon: Icons.calendar_today,
          color: Colors.green,
          title: 'Days',
          detail: days,
        ),
        _buildDetailRow(
          icon: Icons.person,
          color: Colors.purple,
          title: 'Instructor',
          detail: instructor,
        ),
        _buildDetailRow(
          icon: Icons.attach_money,
          color: Colors.red,
          title: 'Fee',
          detail: fee,
        ),
        _buildDetailRow(
          icon: Icons.event_note,
          color: Colors.teal,
          title: 'Total Sessions',
          detail: totalSessions,
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget _buildDetailRow({
    required IconData icon,
    required Color color,
    required String title,
    required String detail,
  }) {
    return Column(
      children: [
        Row(
          children: [
            Icon(icon, size: 24, color: color),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                '$title: $detail',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
        Divider(color: Colors.grey.shade300, thickness: 1),
      ],
    );
  }
}
