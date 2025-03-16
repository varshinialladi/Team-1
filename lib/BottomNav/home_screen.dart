
import 'package:team1/widgets/category.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 245, 251),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
                ),
                Spacer(),
                Text("View all"),
              ],
            ),
            SizedBox(height: 10),
            Categories(),
            Text(
              "Special For You",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
            ),
            SizedBox(height: 10),

         
          ],
        ),
      ),
    );
  }


}