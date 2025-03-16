import 'package:flutter/material.dart';
import 'package:team1/Details/detail_appbar.dart';
import 'package:team1/Details/item_details.dart';
import 'package:team1/Details/product_slider.dart';
import 'package:team1/models/products.dart';
import 'package:team1/widgets/addto_cart.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int currentImage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //for add to cart and icon
      floatingActionButton: AddtoCart(product: widget.product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // for backbutton and share
              DetailAppbar(product: widget.product),
              //produt image slider
              ProductSlider(
                onChange: (index) {
                  setState(() {
                    currentImage = index;
                  });
                },
                image: widget.product.image,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    3,
                    (index) => AnimatedContainer(
                      duration: Duration(microseconds: 300),
                      width: currentImage == index ? 20 : 5,
                      margin: EdgeInsets.only(right: 5),
                      height: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:
                            currentImage == index
                                ? Colors.black
                                : Colors.transparent,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                  bottom: 100,
                ),
                child: Column(children: [ItemDetails(product: widget.product)]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
