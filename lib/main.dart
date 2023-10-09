// Import Flutter material package
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// Entry point of the app
void main() {
  runApp(QueueApp());
}

// Main app widget
class QueueApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp sets up the app with material design
    return MaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        fontFamily: 'Raleway',
        primarySwatch: Colors.blue,
        colorScheme: const ColorScheme.light(background: Color(0xFFE6E7E8)),
        useMaterial3: true,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Splash screen widget
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "ePila",
                  style: TextStyle(fontSize: 35),
                ),
                Expanded(child: SizedBox()),
                Icon(
                  Icons.close_rounded,
                  size: 30,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Color.fromARGB(255, 14, 29, 97)),
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: SizedBox(
                        height: 5,
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(),
                      ),
                      Icon(
                        Icons.arrow_forward_sharp,
                        size: 50,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: SizedBox(
                        height: 5,
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'QUEUE',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 214, 212, 71)),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'eTICKET',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'UPDATE',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: SizedBox(
                        height: 80,
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Align(
                        alignment: Alignment.center,
                        child: Image.asset('assets/user.png',
                            width: 200, height: 200),
                      ))

                      // Display logo image
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: SizedBox(
                        height: 40,
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      QueuePage()), // Navigate to the Queue Page
                            );
                          },
                          child: Text('QUEUE NOW'), // Button to start queuing
                        ),
                      ))
                    ],
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    ));
  }
}

// Queue page widget
class QueuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUEUE'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ETicketPage()), // Navigate to the eTicket Page
                );
              },
              child: Icon(
                Icons.arrow_forward,
                size: 26.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ETicketPage()), // Navigate to the eTicket Page
                );
              },
              child: Text('GENERATE eTICKET'), // Button to generate eTicket
            ),
          ],
        ),
      ),
    );
  }
}

// eTicket page widget
class ETicketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Queue Number: 12345', // Display queue number (replace with dynamic data)
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

// Update page widget
class UpdatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UPDATE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Current Queue Number:', // Display current queue number
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '123', // Display current queue number (replace with dynamic data)
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement real-time updates logic here
              },
              child: Text('Refresh'), // Button to refresh queue information
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement announcements logic here
              },
              child: Text('ANNOUNCEMENTS'), // Button to view announcements
            ),
          ],
        ),
      ),
    );
  }
}
