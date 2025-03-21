import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final int currentsilde;
  const ImageSlider({
    super.key,
    required this.onChange,
    required this.currentsilde,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 180,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: onChange,
              physics: BouncingScrollPhysics(),
              children: [
                Image.asset('images/shoes.jpeg', fit: BoxFit.cover),
                Image.asset('images/imagesilder3.jpeg', fit: BoxFit.cover),
                Image.asset('images/headphone.jpeg', fit: BoxFit.cover),
              ],
            ),
          ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  3,
                  (index) => AnimatedContainer(
                    duration: Duration(microseconds: 300),
                    width: currentsilde == index ? 20 : 5,
                    margin: EdgeInsets.only(right: 5),
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:
                          currentsilde == index
                              ? Colors.black
                              : Colors.transparent,
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
