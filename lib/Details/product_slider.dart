import 'package:flutter/material.dart';

class ProductSlider extends StatelessWidget {
  final Function(int) onChange;
  final String image;
  const ProductSlider({super.key, required this.onChange, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: PageView.builder(
        itemBuilder: (context, index) {
          return Image.asset(image, fit: BoxFit.cover);
        },
        itemCount: 4,
        onPageChanged: onChange,
      ),
    );
  }
}
