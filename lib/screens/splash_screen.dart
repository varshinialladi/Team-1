import 'package:flutter/material.dart';

import 'package:team1/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 248, 248),
      body: Container(
        padding: EdgeInsets.all(2.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 150.0),
              Image.asset(
                'images/img-0.jpeg',

                height: 300,
                width: 400,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20.0),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Let's Get \nStarted!",

                    style: TextStyle(
                      color: const Color.fromARGB(255, 8, 8, 8),
                      fontSize: 60.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),

              Container(
                alignment: Alignment.center,
                child: Text(
                  "Explore the best products from the best stores.",

                  style: TextStyle(
                    color: const Color.fromARGB(255, 7, 7, 7),
                    fontSize: 12.0,
                  ),
                ),
              ),
              SizedBox(height: 30.0),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(
                    horizontal: 32.0,
                    vertical: 16.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Login',

                    style: TextStyle(
                      color: const Color.fromARGB(255, 253, 252, 252),
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
