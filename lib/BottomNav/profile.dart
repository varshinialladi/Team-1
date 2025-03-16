import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 252, 252),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(
                  "My Account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(
                    "images/female-user-profile-avatar-is-a-woman-a-character-for-a-screen-saver-with-emotions-illustration-on-a-white-isolated-background-vector.jpg",
                  ),
                ),
                Text(
                  "Aahana Choudhary",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
                ),

                SizedBox(height: 3),
                Text("aahanachoudhary265@gmail.com"),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                  ),
                  child: Text(
                    "Edit profile",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 12, 9, 9),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// This is navya
