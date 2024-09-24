import 'package:flutter/material.dart';
import 'session1.dart'; // Assuming this page shows the details for session 1
import 'session2.dart'; // Assuming this page shows the details for session 2

class ChalkTalk extends StatefulWidget {
  const ChalkTalk({super.key});

  @override
  State<ChalkTalk> createState() => _ChalkTalkState();
}

class _ChalkTalkState extends State<ChalkTalk> with TickerProviderStateMixin {
  final List<Map<String, String>> sessions = [
    {
      "title": "Living Maths Grade 4 - 5",
      "instructor": "Steve Sherman",
      "description": "Learn Maths in a way like never before",
      "image": "assets/background.jpg",
      "details": "SessionDetailsScreen1"
    },
    {
      "title": "Advanced Science Grade 6 - 7",
      "instructor": "Jane Doe",
      "description": "Explore the world of science in depth",
      "image": "assets/background.jpg",
      "details": "SessionDetailsScreen2"
    },
    {
      "title": "Creative Writing Workshop",
      "instructor": "Emily White",
      "description": "Unlock your creativity with engaging writing exercises.",
      "image": "assets/background.jpg",
      "details": "SessionDetailsScreen3"
    },
    {
      "title": "Introduction to Coding",
      "instructor": "Michael Johnson",
      "description": "Learn the basics of programming through fun projects.",
      "image": "assets/background.jpg",
      "details": "SessionDetailsScreen4"
    },
    {
      "title": "Art & Design for Kids",
      "instructor": "Linda Brown",
      "description": "Express yourself through art and design techniques.",
      "image": "assets/background.jpg",
      "details": "SessionDetailsScreen5"
    },
    {
      "title": "History Through Stories",
      "instructor": "Robert Green",
      "description": "Discover the past through captivating narratives.",
      "image": "assets/background.jpg",
      "details": "SessionDetailsScreen6"
    },
  ];

  Color _backgroundColor = const Color.fromARGB(255, 195, 247, 226); // Updated to light green

  late AnimationController _controller;
  late Animation<double> _buttonScaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );

    _buttonScaleAnimation = Tween<double>(begin: 1.0, end: 0.9).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Booked Sessions',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Center(
              child: Text(
                "Sessions: ${sessions.length}",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: sessions.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
            child: buildSessionCard(sessions[index]),
          );
        },
      ),
    );
  }

  Widget buildSessionCard(Map<String, String> session) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _backgroundColor = const Color.fromARGB(255, 195, 247, 226); // Light green
        });
      },
      onExit: (event) {
        setState(() {
          _backgroundColor = const Color.fromARGB(255, 195, 247, 226); // Light green
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: _backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Increased padding for better spacing
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 3,
                child: SizedBox(
                  height: 120, // Adjusted height for balance
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      session["image"]!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 15), // Increased space between image and text
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return const LinearGradient(
                          colors: [Colors.greenAccent, Colors.green], // Gradient updated to light green
                        ).createShader(bounds);
                      },
                      child: Text(
                        session["title"]!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20, // Increased font size for visibility
                          color: Color(0xFF001F3F), // White is needed to see the gradient
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Instructor: ${session["instructor"]!}",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF333333),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      session["description"]!,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black87, // Darker color for better contrast
                      ),
                    ),
                    const SizedBox(height: 15),
                    ScaleTransition(
                      scale: _buttonScaleAnimation,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24), // Increased padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30), // More rounded button
                          ),
                        ),
                        child: const Text(
                          "More Details",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        onPressed: () {
                          _onButtonPressed(session);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onButtonPressed(Map<String, String> session) {
    _controller.forward().then((_) {
      _controller.reverse();
    });

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          if (session["details"] == "SessionDetailsScreen1") {
            return SessionDetailsScreen1(); // Removed const
          } else if (session["details"] == "SessionDetailsScreen2") {
            return SessionDetailsScreen2(); // Removed const
          } else {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Error"),
              ),
              body: const Center(
                child: Text("Session details not found."),
              ),
            );
          }
        },
      ),
    );
  }
}
