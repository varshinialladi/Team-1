import 'package:team1/models/products.dart';
import 'package:team1/widgets/category.dart';

import 'package:flutter/material.dart';
import 'package:team1/widgets/image_slider.dart';
import 'package:team1/widgets/product_cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentSlider = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 245, 251),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageSlider(onChange: _onPageChanged, currentsilde: _currentSlider),

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
          Expanded(
            child: SingleChildScrollView(
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.80,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 20,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCard(product: products[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentSlider = index;
    });
  }
}
